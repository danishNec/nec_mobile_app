import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../application/beneficiary/beneficiary_bloc.dart';
import '../../../application/home/home_bloc.dart';
import '../../../application/summary/summary_bloc.dart';
import '../../../domain/beneficiary/beneficiary_failure.dart';
import '../../../domain/core/di/injection.dart';
import '../../../domain/core/failures.dart';
import '../../../domain/core/prefs/app_prefs.dart';
import '../../core/notify/app_notify.dart';
import '../../core/otp/app_otp.dart';

@RoutePage()
class BeneficiaryOtpView extends HookWidget {
  const BeneficiaryOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    final prefs = getIt<SharedPrefs>();
    final mobileNumber = prefs.getMobileNumber() ?? '';
    final last4Digits = mobileNumber.length >= 4
        ? mobileNumber.substring(mobileNumber.length - 4)
        : mobileNumber;
    final restartTrigger = useState(0);
    return BlocConsumer<BeneficiaryBloc, BeneficiaryState>(
      listener: (context, state) {
        state.resendBeneficiaryOtpFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => AppNotify.toast(
              failure.maybeMap(
                unableToSendBeneficiaryVerificationCode: (value) =>
                    value.message.toString(),
                serverError: (_) => 'errors.serverError'.tr(),
                orElse: () => 'errors.orElse'.tr(),
              ),
              type: AppToastType.error,
            ),
            (success) {
              if (success == 200) {
                restartTrigger.value++;
              }
            },
          ),
        );
        state.beneficiaryOtpFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (failure) => failure.maybeMap(
              unableToVerifyBeneficiaryOtp: (value) => value.message,
              serverError: (_) => 'errors.serverError'.tr(),
              orElse: () => 'errors.orElse'.tr(),
            ),
            (success) {
              context.router.pop();
              final beneficiary = state.selectedBeneficiary;
              context.read<HomeBloc>().add(
                HomeEvent.addOrEditBeneficiaryChanged(
                  eId: beneficiary?.eId,
                  beneficiaryFirstName: beneficiary?.beneficiaryFirstName,
                  beneficiaryLastName: beneficiary?.beneficiaryLastName,
                  beneficiaryCountryCode:
                      state.selectedBeneficiaryCountry?.titleCode,
                  beneficiaryBankName:
                      state.selectedBeneficiaryBankOrAgent?.titleName,
                  disbursalMode:
                      state.selectedBeneficiaryTransferType?.titleCode,
                  currencyCode: state.selectedBeneficiaryCurrency?.trailingCode,
                  purposeName:
                      state.selectedBeneficiaryPurposeOfTransaction?.titleName,
                  incomeSourceName:
                      state.selectedBeneficiarySourceOfFund?.titleName,
                  purposeOfTransaction:
                      state.selectedBeneficiaryPurposeOfTransaction?.titleCode,
                  sourceOfFund:
                      state.selectedBeneficiarySourceOfFund?.titleCode,
                ),
              );
              context.read<SummaryBloc>().add(
                SummaryEvent.beneficiaryUpdatedChanged(
                  eId: beneficiary?.eId,
                  beneficiaryFirstName: beneficiary?.beneficiaryFirstName,
                  beneficiaryLastName: beneficiary?.beneficiaryLastName,
                  beneficiaryCountryCode:
                      state.selectedBeneficiaryCountry?.titleCode,
                  beneficiaryBankName:
                      state.selectedBeneficiaryBankOrAgent?.titleName,
                  disbursalMode:
                      state.selectedBeneficiaryTransferType?.titleCode,
                  currencyCode: state.selectedBeneficiaryCurrency?.trailingCode,
                  purposeName:
                      state.selectedBeneficiaryPurposeOfTransaction?.titleName,
                  incomeSourceName:
                      state.selectedBeneficiarySourceOfFund?.titleName,
                  purposeOfTransaction:
                      state.selectedBeneficiaryPurposeOfTransaction?.titleCode,
                  sourceOfFund:
                      state.selectedBeneficiarySourceOfFund?.titleCode,
                ),
              );
              context.read<HomeBloc>().add(
                HomeEvent.addOrEditBeneficiaryChanged(
                  eId: beneficiary?.eId,
                  beneficiaryFirstName: beneficiary?.beneficiaryFirstName,
                  beneficiaryLastName: beneficiary?.beneficiaryLastName,
                  beneficiaryBankName: beneficiary?.beneficiaryBankName,
                  disbursalMode: beneficiary?.disbursalMode,
                  beneficiaryCountryCode: beneficiary?.beneficiaryCountryCode,
                  currencyCode: beneficiary?.currencyCode,
                ),
              );
            },
          ),
        );
      },
      builder: (context, state) {
        return AppOtp(
          restartTrigger: restartTrigger.value,
          isSubmitting: state.isOtpSubmitting,
          autovalidateMode: state.showOtpErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          validator: (_) =>
              context.read<BeneficiaryBloc>().state.beneficiaryOtp.value.fold(
                (f) => f.maybeMap(
                  invalidOtp: (_) => 'otp.invalid'.tr(),
                  orElse: () => null,
                ),
                (_) => null,
              ),
          onChanged: (p0) {
            context.read<BeneficiaryBloc>().add(
              BeneficiaryEvent.beneficiaryOtpChanged(p0),
            );
          },
          contentTitle: 'otp.title'.tr(),
          contentSubtitle: 'otp.description'.tr(
            namedArgs: {'mobileNumber': '*****$last4Digits'},
          ),
          onResend: () {
            context.read<BeneficiaryBloc>().add(
              const BeneficiaryEvent.resendBeneficiaryOtp(),
            );
          },
          onTapContinue: () {
            FocusScope.of(context).unfocus();
            context.read<BeneficiaryBloc>().add(
              const BeneficiaryEvent.beneficiaryOtpSubmitted(),
            );
          },
        );
      },
    );
  }
}
