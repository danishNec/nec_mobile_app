import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../application/home/home_bloc.dart';
import '../../../application/summary/summary_bloc.dart';
import '../../../domain/summary/summary_failure.dart';
import '../../../domain/summary/summary_temporary_session_dto.dart';
import '../../core/notify/app_notify.dart';
import '../../core/web_view/app_web_view.dart';
import '../../core/widgets/confirm_pop_scope.dart';
import '../../routes/app_routes.gr.dart';

@RoutePage()
class SummaryPaymentWebView extends HookWidget {
  final SummaryTemporarySessionDto? summaryTemporarySessionDto;

  const SummaryPaymentWebView({super.key, this.summaryTemporarySessionDto});

  static const List<String> _paymentCompletionKeywords = [
    'success',
    'successresponse',
    'successnotification',
    'failed',
    'failure',
    'error',
    'errorresponse',
    'errornotification',
    'cancel',
    'declined',
  ];

  @override
  Widget build(BuildContext context) {
    final isPageLoading = useState(true);
    final isStatusTriggered = useState(false);

    final transactionReference =
        summaryTemporarySessionDto?.data?.appTransactionReference ?? '';

    final paymentUrl = summaryTemporarySessionDto?.data?.pGUrl ?? '';

    bool isPaymentCompletionUrl(String url) {
      final uri = Uri.tryParse(url);

      if (uri == null) return false;

      final normalizedUrl = url.toLowerCase();

      return _paymentCompletionKeywords.any(normalizedUrl.contains);
    }

    void triggerStatusEnquiry() {
      if (isStatusTriggered.value || transactionReference.isEmpty) return;

      isStatusTriggered.value = true;

      context.read<SummaryBloc>().add(
        SummaryEvent.getSummaryStatusEnquiry(transactionReference),
      );
    }

    void handlePaymentCompletion(String url) {
      if (!isPaymentCompletionUrl(url)) return;

      triggerStatusEnquiry();
    }

    final controller = useMemoized(() {
      final webViewController = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(Colors.transparent)
        ..setNavigationDelegate(
          NavigationDelegate(
            onNavigationRequest: (request) {
              isPageLoading.value = true;

              handlePaymentCompletion(request.url);

              return NavigationDecision.navigate;
            },
            onPageStarted: (_) {
              isPageLoading.value = true;
            },
            onPageFinished: (url) {
              isPageLoading.value = false;

              handlePaymentCompletion(url);
            },
            onWebResourceError: (_) {
              isPageLoading.value = false;
            },
          ),
        );

      if (paymentUrl.isNotEmpty) {
        webViewController.loadRequest(Uri.parse(paymentUrl));
      }

      return webViewController;
    }, [paymentUrl]);

    return ConfirmPopScope(
      enabled: !isStatusTriggered.value,
      title: 'summary.webView.leaveDialog.title'.tr(),
      message: 'summary.webView.leaveDialog.message'.tr(),
      confirmText: 'summary.webView.leaveDialog.confirm'.tr(),
      cancelText: 'summary.webView.leaveDialog.cancel'.tr(),
      onConfirm: () => context.router.pop(),
      child: BlocConsumer<SummaryBloc, SummaryState>(
        listener: (context, state) {
          state.summaryStatusEnquiryFailureOrSuccessOption.fold(() {}, (
            either,
          ) {
            either.fold(
              (failure) {
                isStatusTriggered.value = false;
                isPageLoading.value = false;

                context.read<HomeBloc>().add(
                  const HomeEvent.initialize(
                    isRefresh: true,
                    clearAmounts: true,
                  ),
                );

                final errorMessage = failure.maybeMap(
                  unableToGetSummaryStatusEnquiry: (value) => value.message,
                  orElse: () => 'errors.unknownError'.tr(),
                );
                context.router.pop();
                AppNotify.toast(
                  errorMessage,
                  type: AppToastType.error,
                  position: AppToastPosition.top,
                );
              },
              (_) {
                context.read<HomeBloc>().add(
                  const HomeEvent.initialize(
                    isRefresh: true,
                    clearAmounts: true,
                  ),
                );
                context.router.pushAndPopUntil(
                  AppPaymentResultRoute(
                    paymentResult: state.commonPaymentResultDto,
                  ),
                  predicate: (route) => route.isFirst,
                );
              },
            );
          });
        },
        builder: (context, state) {
          return AppWebView(
            title: 'summary.webView.title'.tr(),
            controller: controller,
            resizeToAvoidBottomInset: false,
            leading: isPageLoading.value || state.isRateLoading,
          );
        },
      ),
    );
  }
}
