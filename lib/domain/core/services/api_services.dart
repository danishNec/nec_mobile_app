import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:chopper/chopper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:nec_mobile_app/presentation/routes/app_routes.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../presentation/core/notify/app_notify.dart';
import '../../../presentation/routes/app_routes.gr.dart';
import '../config/app_config.dart';
import '../di/injection.dart';
import '../prefs/app_prefs.dart';

part 'api_services.chopper.dart';

// Sentinel header that marks requests which should bypass automatic token
// injection and the 401 → refresh/logout flow. Chopper sets it via
// @Headers; AuthHttpClient strips it before the request hits the wire.
const String _kSkipAuth = 'x-skip-auth';

@ChopperApi(baseUrl: '/api')
abstract class ApiServices extends ChopperService {
  @GET(path: '/auth/get-kyc-combo-list', headers: {'x-skip-auth': 'true'})
  Future<Response> getKycComboList();

  @POST(path: '/auth/request-otp', headers: {'x-skip-auth': 'true'})
  Future<Response> postRequestOtp(@Body() Map<String, dynamic> body);

  @POST(path: '/auth/verify-login-otp', headers: {'x-skip-auth': 'true'})
  Future<Response> postVerifyOtp(@Body() Map<String, dynamic> body);

  @POST(path: '/auth/verify-mpin', headers: {'x-skip-auth': 'true'})
  Future<Response> postVerifyMpin(@Body() Map<String, dynamic> body);

  @POST(path: '/auth/update-mpin')
  Future<Response> postSetMpin({
    @Header('Authorization') required String? token,
    @Body() required Map<String, dynamic> body,
  });

  @POST(path: '/auth/Verify_Biometric', headers: {'x-skip-auth': 'true'})
  Future<Response> postVerifyBiometric(@Body() Map<String, dynamic> body);

  @POST(path: '/auth/request-email-otp')
  Future<Response> postRequestEmailOtp({
    @Header('Authorization') required String? token,
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  @POST(path: '/auth/email-updation')
  Future<Response> postVerifyEmailOtp({
    @Header('Authorization') required String? token,
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  @GET(path: '/auth/GetBanners', headers: {'x-skip-auth': 'true'})
  Future<Response> getAdvertisement();

  @GET(path: '/app/version-config', headers: {'x-skip-auth': 'true'})
  Future<Response> getAppVersionConfig();

  @GET(path: '/customer/get-user')
  Future<Response> getUserInfo({
    @Header('Authorization') required String? token,
  });

  @GET(path: '/beneficiary/get-recent-beneficiary-list')
  Future<Response> getRecentBeneficiaries({
    @Header('Authorization') required String? token,
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  @GET(path: '/customer/get-currency-list', headers: {'x-skip-auth': 'true'})
  Future<Response> getCurrencies({
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  @POST(path: '/Transaction/PaymentGatewy-quick-transaction')
  Future<Response> createTemporarySession({
    @Header('Authorization') required String? token,
    @Body() required Map<String, dynamic> body,
  });

  @GET(path: '/payment/GetPaymentStatus')
  Future<Response> statusEnquiry({
    @Header('Authorization') required String? token,
    @Query('trackId') required String temporarySessionId,
  });

  @GET(
    path: '/customer/get-transfer-mode-list',
    headers: {'x-skip-auth': 'true'},
  )
  Future<Response> getTransferTypes({
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  @GET(path: '/customer/get-product-list')
  Future<Response> getBankOrAgents({
    @Header('Authorization') required String? token,
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  @GET(
    path: '/transaction/get-payment-mode-list',
    headers: {'x-skip-auth': 'true'},
  )
  Future<Response> getPaymentModes();

  @GET(path: '/transaction/calculate-amount', headers: {'x-skip-auth': 'true'})
  Future<Response> getCalculatedAmount(
    @QueryMap() Map<String, dynamic> queryParams,
  );

  @GET(path: '/beneficiary/get-beneficiary-list')
  Future<Response> getBeneficiaries({
    @Header('Authorization') required String? token,
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  @GET(path: '/beneficiary/get-all-product-field-settings')
  Future<Response> getProductFieldSettings({
    @Header('Authorization') required String? token,
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  @GET(path: '/transaction/get-income-source-combo-list')
  Future<Response> getSourceOfFund({
    @Header('Authorization') required String? token,
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  @GET(path: '/transaction/get-purpose-combo-list')
  Future<Response> getPurposeOfTransfer({
    @Header('Authorization') required String? token,
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  @GET(path: '/beneficiary/get-beneficiary-combo-list')
  Future<Response> getBeneficiaryCombo({
    @Header('Authorization') required String? token,
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  @GET(path: '/notification/get-notification-list')
  Future<Response> getNotifications({
    @Header('Authorization') required String? token,
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  @GET(path: '/beneficiary/get-beneficiary-bank-combo-list')
  Future<Response> getBankCombo({
    @Header('Authorization') required String? token,
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  @GET(path: '/beneficiary/get-beneficiary-branch-combo-list')
  Future<Response> getBankBranchCombo({
    @Header('Authorization') required String? token,
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  @GET(path: '/beneficiary/get-beneficiary-route-code-combo-list')
  Future<Response> getRouteCode({
    @Header('Authorization') required String? token,
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  @POST(path: '/auth/request-Beneficiary-otp')
  Future<Response> postRequestBeneficiaryOtp({
    @Header('Authorization') required String? token,
    @Body() required Map<String, dynamic> body,
  });

  @POST(path: '/auth/verify-Benficiary-login-otp')
  Future<Response> postVerifyBeneficiaryOtp({
    @Header('Authorization') required String? token,
    @Body() required Map<String, dynamic> body,
  });

  @DELETE(path: '/beneficiary/delete-beneficiary')
  Future<Response> deleteBeneficiary({
    @Header('Authorization') required String? token,
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  @GET(path: '/beneficiary/get-beneficiary-bank-details')
  Future<Response> getBankBranchFromRoute({
    @Header('Authorization') required String? token,
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  @GET(path: '/Beneficiary/get-beneficiary-by-id')
  Future<Response> getBeneficiaryById({
    @Header('Authorization') required String? token,
    @Query('eId') required String? beneficiaryId,
  });

  @GET(path: '/Beneficiary/get-all-beneficiary-product-field-settings')
  Future<Response> getValidateBeneficiary({
    @Header('Authorization') required String token,
    @Query('ProductCode') required String productCode,
    @Query('DisbursalModeCode') required String transferTypeCode,
    @Query('MemberSection') required String memberSection,
    @Query('CountryCode') required String beneficiaryCountryCode,
    @Query('Language') required String language,
    @Query('BeneficiaryId') required String beneficiaryCode,
  });

  @GET(path: '/auth/get-profile')
  Future<Response> getProfile({
    @Header('Authorization') required String? token,
  });

  @GET(path: '/transaction/get-transaction-list')
  Future<Response> getTransactionHistories({
    @Header('Authorization') required String? token,
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  @GET(path: '/customer/get-branch-list', headers: {'x-skip-auth': 'true'})
  Future<Response> getBranches();

  @GET(
    path: '/Customer/get-country-combo-list',
    headers: {'x-skip-auth': 'true'},
  )
  Future<Response> getCountryCombo();

  @GET(path: '/Transaction/get-transaction')
  Future<Response> getTransactionDetails({
    @Header('Authorization') required String? token,
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  @GET(path: '/Transaction/print-receipt')
  @FactoryConverter(response: _binaryConverter)
  Future<Response<List<int>>> downloadOrShareReceipt({
    @Header('Authorization') required String? token,
    @QueryMap() required Map<String, dynamic> queryParams,
  });

  static ApiServices create() {
    final client = AuthHttpClient(http.Client());

    return _$ApiServices(
      ChopperClient(
        baseUrl: Uri.tryParse(AppConfig.appBaseUrl),
        services: [_$ApiServices()],
        client: client,
        converter: const JsonConverter(),
        errorConverter: const JsonConverter(),
        interceptors: [HttpLoggingInterceptor()],
      ),
    );
  }
}

enum _ErrorKind {
  network,
  timeout,
  server;

  String get titleKey => switch (this) {
    _ErrorKind.network => 'network.error.connectionError.title',
    _ErrorKind.timeout => 'network.error.requestTimeout.title',
    _ErrorKind.server => 'network.error.serverError.title',
  };

  String get messageKey => switch (this) {
    _ErrorKind.network => 'network.error.connectionError.message',
    _ErrorKind.timeout => 'network.error.requestTimeout.message',
    _ErrorKind.server => 'network.error.serverError.message',
  };
}

class AuthHttpClient extends http.BaseClient {
  final http.Client _inner;
  final SharedPrefs _prefs = getIt<SharedPrefs>();
  final AppRouter _router = getIt<AppRouter>();

  static const _requestTimeout = Duration(seconds: 30);
  static const _refreshTimeout = Duration(seconds: 15);

  // Only one token refresh runs at a time; concurrent 401s share its result.
  Future<bool>? _ongoingRefresh;

  // Queues completers for all concurrent requests awaiting a user retry decision.
  final List<Completer<bool>> _pendingRetryCompleters = [];
  bool _isRetryDialogVisible = false;

  AuthHttpClient(this._inner);

  bool _isBinaryResponse(http.StreamedResponse response) {
    final contentType = response.headers['content-type'] ?? '';
    return contentType.contains('application/pdf') ||
        contentType.contains('application/octet-stream') ||
        contentType.contains('application/vnd');
  }

  int _retryCount(http.BaseRequest request) =>
      int.tryParse(request.headers['x-retry-attempt'] ?? '0') ?? 0;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    // Reject non-HTTPS to prevent accidental plaintext banking data transmission.
    if (!request.url.scheme.startsWith('https')) {
      throw Exception(
        'Insecure connections are not permitted in this application.',
      );
    }

    // Read and strip the skip-auth sentinel before the request hits the wire.
    // Chopper sets it via headers: {'x-skip-auth': 'true'} on the method annotation.
    final skipAuth = request.headers.remove(_kSkipAuth) != null;

    if (!skipAuth) {
      final token = _prefs.getToken();
      if (token != null && token.isNotEmpty) {
        request.headers['Authorization'] = 'Bearer $token';
      }
    }

    HttpLogger.logRequest(request);

    final startTime = DateTime.now();

    // --- Initial send ---
    final http.StreamedResponse response;
    try {
      response = await _inner.send(request).timeout(_requestTimeout);
    } on SocketException catch (e) {
      HttpLogger.logException(request: request, exception: e);
      final shouldRetry = await _awaitRetryDecision(_ErrorKind.network);
      if (shouldRetry) {
        final clone = _cloneForRetry(request, skipAuth: skipAuth);
        if (clone != null) return send(clone);
      }
      rethrow;
    } on TimeoutException catch (e) {
      HttpLogger.logException(request: request, exception: e);
      final shouldRetry = await _awaitRetryDecision(_ErrorKind.timeout);
      if (shouldRetry) {
        final clone = _cloneForRetry(request, skipAuth: skipAuth);
        if (clone != null) return send(clone);
      }
      rethrow;
    } on HandshakeException catch (e) {
      HttpLogger.logException(request: request, exception: e);
      await _awaitRetryDecision(_ErrorKind.server, retryable: false);
      rethrow;
    } on TlsException catch (e) {
      HttpLogger.logException(request: request, exception: e);
      await _awaitRetryDecision(_ErrorKind.server, retryable: false);
      rethrow;
    } catch (e) {
      HttpLogger.logException(request: request, exception: e);
      await _awaitRetryDecision(_ErrorKind.server, retryable: false);
      rethrow;
    }

    final duration = DateTime.now().difference(startTime).inMilliseconds;
    final (buffered, body) = await _bufferAndLog(response, request, duration);

    // Only surface the retry dialog for genuine infrastructure failures.
    // A valid JSON object body means the backend authored this error response
    // intentionally (business-logic error); the repository layer will decode
    // and map it to the correct domain failure.
    if (buffered.statusCode >= 500 && !_isBackendJson(body)) {
      final safeMethod = _isSafeMethod(request.method);
      final shouldRetry = await _awaitRetryDecision(
        _ErrorKind.server,
        retryable: safeMethod,
      );
      if (shouldRetry && safeMethod) {
        final clone = _cloneForRetry(request, skipAuth: skipAuth);
        if (clone != null) return send(clone);
      }
      return buffered;
    }

    if (skipAuth || buffered.statusCode != 401) {
      return buffered;
    }

    // --- 401 — attempt token refresh exactly once per request chain ---
    if (_retryCount(request) >= 1) {
      // Already retried once; session is genuinely expired.
      _scheduleLogout();
      return buffered;
    }

    final refreshed = await _serializedRefresh();
    if (!refreshed) {
      _scheduleLogout();
      return buffered;
    }

    final newToken = _prefs.getToken();
    final retryReq = _cloneWithAuth(request, newToken, retryCount: 1);
    if (retryReq == null) {
      // Request type cannot be cloned (e.g., streamed file upload after send).
      _scheduleLogout();
      return buffered;
    }

    HttpLogger.logRequest(retryReq);

    // --- Retry send ---
    final retryStart = DateTime.now();
    final http.StreamedResponse retryResponse;
    try {
      retryResponse = await _inner.send(retryReq).timeout(_requestTimeout);
    } on SocketException catch (e) {
      HttpLogger.logException(request: retryReq, exception: e);
      final shouldRetry = await _awaitRetryDecision(_ErrorKind.network);
      if (shouldRetry) {
        final clone = _cloneForRetry(retryReq);
        if (clone != null) return send(clone);
      }
      rethrow;
    } on TimeoutException catch (e) {
      HttpLogger.logException(request: retryReq, exception: e);
      final shouldRetry = await _awaitRetryDecision(_ErrorKind.timeout);
      if (shouldRetry) {
        final clone = _cloneForRetry(retryReq);
        if (clone != null) return send(clone);
      }
      rethrow;
    } catch (e) {
      HttpLogger.logException(request: retryReq, exception: e);
      await _awaitRetryDecision(_ErrorKind.server, retryable: false);
      rethrow;
    }

    final retryDuration = DateTime.now().difference(retryStart).inMilliseconds;
    final (bufferedRetry, retryBody) = await _bufferAndLog(
      retryResponse,
      retryReq,
      retryDuration,
    );

    if (bufferedRetry.statusCode >= 500 && !_isBackendJson(retryBody)) {
      final safeMethod = _isSafeMethod(retryReq.method);
      final shouldRetry = await _awaitRetryDecision(
        _ErrorKind.server,
        retryable: safeMethod,
      );
      if (shouldRetry && safeMethod) {
        final clone = _cloneForRetry(retryReq);
        if (clone != null) return send(clone);
      }
    } else if (bufferedRetry.statusCode == 401) {
      // Refresh succeeded but server still rejects — force logout.
      _scheduleLogout();
    }

    return bufferedRetry;
  }

  // Reads the response stream into memory exactly once, logs it, and returns
  // both a new StreamedResponse backed by the buffered bytes and the raw body
  // string (empty for binary responses). The body string is used by the caller
  // to distinguish backend business-logic errors (valid JSON) from true
  // infrastructure failures (HTML, empty, or unparseable bodies).
  Future<(http.StreamedResponse, String)> _bufferAndLog(
    http.StreamedResponse response,
    http.BaseRequest request,
    int duration,
  ) async {
    if (_isBinaryResponse(response)) {
      final bytes = await response.stream.toBytes();
      HttpLogger.logBinaryResponse(
        request: request,
        statusCode: response.statusCode,
        bytesLength: bytes.length,
        duration: duration,
      );
      return (
        http.StreamedResponse(
          Stream.value(bytes),
          response.statusCode,
          contentLength: bytes.length,
          headers: response.headers,
          request: response.request,
          reasonPhrase: response.reasonPhrase,
        ),
        '',
      );
    }

    final body = await response.stream.bytesToString();
    HttpLogger.logResponse(
      request: request,
      statusCode: response.statusCode,
      body: body,
      duration: duration,
    );
    final encoded = utf8.encode(body);
    return (
      http.StreamedResponse(
        Stream.value(encoded),
        response.statusCode,
        contentLength: encoded.length,
        headers: response.headers,
        request: response.request,
        reasonPhrase: response.reasonPhrase,
      ),
      body,
    );
  }

  // Returns true when the body is a JSON object — i.e. the backend authored
  // the response intentionally (business-logic error). Non-JSON bodies
  // (HTML error pages, empty strings, plain text) indicate a true
  // infrastructure failure that should surface the retry dialog.
  bool _isBackendJson(String body) {
    if (body.isEmpty) return false;
    try {
      return jsonDecode(body) is Map<String, dynamic>;
    } catch (_) {
      return false;
    }
  }

  // Returns the ongoing refresh future if one is already in flight so that
  // concurrent 401 responses don't race to refresh the token multiple times.
  Future<bool> _serializedRefresh() {
    _ongoingRefresh ??= _doRefreshToken().whenComplete(() {
      _ongoingRefresh = null;
    });
    return _ongoingRefresh!;
  }

  Future<bool> _doRefreshToken() async {
    final refreshToken = _prefs.getRefreshToken();
    if (refreshToken == null || refreshToken.isEmpty) {
      HttpLogger.logTokenRefresh(
        success: false,
        hint: 'no refresh token stored',
      );
      return false;
    }

    try {
      final url = Uri.parse(
        '${AppConfig.appBaseUrl}/api/Auth/refresh-token',
      );
      final response = await http
          .post(
            url,
            headers: {'Content-Type': 'application/json'},
            body: jsonEncode({'refresh_token': refreshToken}),
          )
          .timeout(_refreshTimeout);

      if (response.statusCode != 200) {
        HttpLogger.logTokenRefresh(
          success: false,
          hint: 'HTTP ${response.statusCode}',
        );
        return false;
      }

      final decoded = jsonDecode(response.body) as Map<String, dynamic>?;
      final data = decoded?['data'] as Map<String, dynamic>?;
      final newToken = data?['jwt_token'] as String?;
      final newRefreshToken = data?['refresh_token'] as String?;

      if (newToken == null || newToken.isEmpty) {
        HttpLogger.logTokenRefresh(
          success: false,
          hint: 'server returned empty token',
        );
        return false;
      }

      // TEMPORARY: /api/Auth/refresh-token has been observed minting JWTs
      // that omit the MemberCode/LocationCode claims present on the
      // original login token — the backend then rejects any authenticated
      // call that relies on them (e.g. create-temporary-session on "Pay
      // Now"), while calls made earlier on the still-good login token keep
      // working. Treat a claim-stripped token as a failed refresh so the
      // caller forces a clean re-login instead of silently persisting a
      // token that will break unrelated calls later. Remove this guard
      // once the backend includes these claims on every token it mints.
      if (!_hasRequiredSessionClaims(newToken)) {
        HttpLogger.logTokenRefresh(
          success: false,
          hint: 'refreshed token missing MemberCode/LocationCode claims',
        );
        return false;
      }

      await _prefs.setToken(newToken);
      if (newRefreshToken != null && newRefreshToken.isNotEmpty) {
        await _prefs.setRefreshToken(newRefreshToken);
      }
      HttpLogger.logTokenRefresh(success: true);
      return true;
    } catch (e) {
      HttpLogger.logTokenRefresh(
        success: false,
        hint: e.runtimeType.toString(),
      );
      return false;
    }
  }

  // Decodes a JWT's payload segment without verifying its signature — used
  // only to inspect claims already trusted because the token came straight
  // from our own backend over HTTPS, never to validate an untrusted token.
  Map<String, dynamic>? _decodeJwtPayload(String token) {
    try {
      final parts = token.split('.');
      if (parts.length != 3) return null;
      final normalized = base64Url.normalize(parts[1]);
      final decoded = utf8.decode(base64Url.decode(normalized));
      return jsonDecode(decoded) as Map<String, dynamic>;
    } catch (_) {
      return null;
    }
  }

  bool _hasRequiredSessionClaims(String token) {
    final claims = _decodeJwtPayload(token);
    if (claims == null) return false;
    final memberCode = claims['MemberCode']?.toString() ?? '';
    final locationCode = claims['LocationCode']?.toString() ?? '';
    return memberCode.isNotEmpty &&
        memberCode != '0' &&
        locationCode.isNotEmpty &&
        locationCode != '0';
  }

  http.BaseRequest? _cloneWithAuth(
    http.BaseRequest original,
    String? token, {
    required int retryCount,
  }) {
    final headers = {
      ...original.headers,
      'Authorization': 'Bearer $token',
      'x-retry-attempt': retryCount.toString(),
    };

    if (original is http.Request) {
      return http.Request(original.method, original.url)
        ..headers.addAll(headers)
        ..bodyBytes = original.bodyBytes;
    }

    // Multipart file streams may already be consumed after the first send.
    // We clone what we can; the caller handles null gracefully.
    if (original is http.MultipartRequest) {
      return http.MultipartRequest(original.method, original.url)
        ..headers.addAll(headers)
        ..fields.addAll(original.fields)
        ..files.addAll(original.files);
    }

    return null;
  }

  // Clones a request preserving all headers, used for network/timeout retries
  // where the auth state has not changed. skipAuth re-attaches the sentinel so
  // the recursive send() call honours the same bypass decision.
  http.BaseRequest? _cloneForRetry(
    http.BaseRequest original, {
    bool skipAuth = false,
  }) {
    final headers = Map<String, String>.from(original.headers);
    if (skipAuth) headers[_kSkipAuth] = 'true';
    if (original is http.Request) {
      return http.Request(original.method, original.url)
        ..headers.addAll(headers)
        ..bodyBytes = original.bodyBytes;
    }
    if (original is http.MultipartRequest) {
      return http.MultipartRequest(original.method, original.url)
        ..headers.addAll(headers)
        ..fields.addAll(original.fields)
        ..files.addAll(original.files);
    }
    return null;
  }

  // Only GET/HEAD/OPTIONS are safe to retry on 5xx — POST/PUT/DELETE could
  // cause duplicate transactions if the server partially processed the request.
  bool _isSafeMethod(String method) =>
      const {'GET', 'HEAD', 'OPTIONS'}.contains(method.toUpperCase());

  // Suspends the calling HTTP request until the user taps Retry or Cancel.
  // All concurrent requests that fail while a dialog is visible share the
  // same dialog; they all retry (or give up) together when the user decides.
  Future<bool> _awaitRetryDecision(
    _ErrorKind kind, {
    bool retryable = true,
  }) async {
    final completer = Completer<bool>();
    _pendingRetryCompleters.add(completer);

    if (!_isRetryDialogVisible) {
      _isRetryDialogVisible = true;
      _showNetworkDialog(kind, retryable: retryable);
    }

    return completer.future.timeout(
      const Duration(minutes: 5),
      onTimeout: () {
        _isRetryDialogVisible = false;
        _resolveAll(false);
        return false;
      },
    );
  }

  void _showNetworkDialog(_ErrorKind kind, {required bool retryable}) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = _router.navigatorKey.currentContext;
      if (context == null || !context.mounted) {
        _isRetryDialogVisible = false;
        _resolveAll(false);
        return;
      }
      DialogHelper.show(
        context,
        type: AppDialogType.error,
        title: kind.titleKey.tr(),
        message: kind.messageKey.tr(),
        buttonText: retryable ? 'buttons.retry'.tr() : 'buttons.okay'.tr(),
        onPressed: () {
          _router.navigatorKey.currentState?.pop();
          _isRetryDialogVisible = false;
          _resolveAll(retryable);
        },
        showTwoButtons: retryable,
        secondButtonText: retryable ? 'buttons.cancel'.tr() : null,
        onSecondPressed: retryable
            ? () {
                _router.navigatorKey.currentState?.pop();
                _isRetryDialogVisible = false;
                _resolveAll(false);
              }
            : null,
      ).whenComplete(() {
        // Catches any dismissal not handled by a button (e.g. Android back key).
        _isRetryDialogVisible = false;
        _resolveAll(false);
      });
    });
  }

  void _resolveAll(bool shouldRetry) {
    final completers = List<Completer<bool>>.from(_pendingRetryCompleters);
    _pendingRetryCompleters.clear();
    for (final c in completers) {
      if (!c.isCompleted) c.complete(shouldRetry);
    }
  }

  void _scheduleLogout() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = _router.navigatorKey.currentContext;
      if (context == null || !context.mounted) return;
      _router.replaceAll([MpinRoute()]);
    });
  }
}

// ---------------------------------------------------------------------------
// HttpLogger  —  hacker-console style, debug-only
// ---------------------------------------------------------------------------
//
//  ▶ REQUEST    outgoing call with headers + body
//  ◀ RESPONSE   incoming JSON/text reply with status + body
//  ◀ BINARY     incoming binary (PDF, octet-stream) with size
//  ✖ EXCEPTION  network / TLS / timeout failure
//  🔑 REFRESH   token-refresh attempt outcome
// ---------------------------------------------------------------------------

class HttpLogger {
  // ─── widths & dividers ────────────────────────────────────────────────────

  static const _thin =
      '│──────────────────────────────────────────────────────────────';
  static const _bot =
      '╰──────────────────────────────────────────────────────────────';
  static const _maxBody = 3000;

  static String _top(String label) =>
      '╭──[ $label ]${('─' * (57 - label.length)).replaceAll(RegExp(r'-{0,}$'), '')}';

  // ─── Public API ───────────────────────────────────────────────────────────

  static void logRequest(http.BaseRequest request) {
    if (!kDebugMode) return;

    final attempt = _attempt(request);
    final method = _pad(request.method, 6);
    final path = request.url.path;
    final fullUrl = request.url.toString();
    final ts = _ts();
    final sanitized = _sanitizeHeaders(request.headers);

    final b = StringBuffer()
      ..writeln(_top('▶  REQUEST  ·  $ts  ·  attempt #$attempt'))
      ..writeln('│')
      ..writeln('│  $method  $path')
      ..writeln('│  🌐  $fullUrl')
      ..writeln('│');

    if (sanitized.isNotEmpty) {
      b.writeln('│  HEADERS');
      for (final e in sanitized.entries) {
        b.writeln('│    ${e.key.padRight(26)} ${e.value}');
      }
      b.writeln('│');
    }

    if (request is http.Request && request.body.isNotEmpty) {
      b.writeln('│  BODY');
      _appendJson(b, request.body);
      b.writeln('│');
    }

    b
      ..writeln('│  CURL')
      ..writeln(_thin);
    for (final line in _buildCurl(request, multiline: true).split('\n')) {
      b.writeln('│  $line');
    }
    b
      ..writeln('│')
      ..write(_bot);
    log('\n${b.toString()}', name: 'HTTP');

    // Single-line, grep-friendly copy of the same curl, emitted on multiple
    // channels so it shows up wherever you are watching:
    //   • `dart:developer.log` (name: CURL) — the channel `flutter run` reads
    //     on physical iOS devices via the Dart VM service, and it also lands
    //     in Console.app under the Runner process.
    //   • `debugPrint` — forwards to the Xcode console / Android logcat as
    //     `flutter: ...` (throttled, may wrap very long lines).
    // Filter with `NEC-CURL` in any of those views.
    final curl = _buildCurl(request);
    log('$curlTag ${request.method} ${request.url.path}\n$curl', name: 'CURL');
    debugPrint('$curlTag ${request.method} ${request.url.path}');
    debugPrint(curl);
  }

  /// Unique marker prefixing every single-line curl log — filter the console
  /// with `grep "NEC-CURL"` (or your IDE's log filter) to see only these.
  static const String curlTag = 'NEC-CURL »';

  /// Builds a copy-paste-ready `curl` command for [request] so the exact call
  /// can be replayed from a terminal. Uses the real (unredacted) headers —
  /// debug builds only, so the token never leaks in release.
  ///
  /// [multiline] joins args with `\` + newline for readability inside the log
  /// box; the default single-line form is easier to select and paste.
  static String _buildCurl(http.BaseRequest request, {bool multiline = false}) {
    String q(String s) => "'${s.replaceAll("'", "'\\''")}'";

    final parts = <String>['curl -i -X ${request.method}'];

    request.headers.forEach((key, value) {
      if (key.toLowerCase() == 'x-retry-attempt') return;
      parts.add('-H ${q('$key: $value')}');
    });

    if (request is http.Request && request.body.isNotEmpty) {
      parts.add('--data ${q(request.body)}');
    } else if (request is http.MultipartRequest) {
      request.fields.forEach((key, value) {
        parts.add('-F ${q('$key=$value')}');
      });
      for (final file in request.files) {
        parts.add('-F ${q('${file.field}=@<path-to-${file.filename ?? file.field}>')}');
      }
    }

    parts.add(q(request.url.toString()));
    return parts.join(multiline ? ' \\\n  ' : ' ');
  }

  static void logResponse({
    required http.BaseRequest request,
    required int statusCode,
    required String body,
    required int duration,
  }) {
    if (!kDebugMode) return;

    final attempt = _attempt(request);
    final badge = _badge(statusCode);
    final speed = _speed(duration);
    final path = request.url.path;
    final method = _pad(request.method, 6);

    final b = StringBuffer()
      ..writeln(_top('◀  RESPONSE'))
      ..writeln('│')
      ..writeln(
        '│  $badge  $statusCode   $method  $path   ${duration}ms$speed   #$attempt',
      )
      ..writeln('│  🌐  ${request.url}')
      ..writeln('│');

    if (body.isNotEmpty) {
      b.writeln('│  BODY');
      _appendJson(b, body);
      b.writeln('│');
    }

    b.write(_bot);
    log('\n${b.toString()}', name: 'HTTP');

    // Single-line, grep-friendly copy of the response body, emitted via
    // debugPrint (not just dart:developer.log) so it shows up even on
    // consoles that don't listen to the VM's log stream — e.g. a plain
    // `flutter run` in a VS Code integrated terminal. Mirrors the
    // NEC-CURL request log above. Filter with `NEC-RESP` in any console.
    log(
      '$responseTag $statusCode $method $path (${duration}ms)\n${_clip(_prettyJson(body))}',
      name: 'RESP',
    );
    debugPrint(
      '$responseTag $statusCode $method $path (${duration}ms)',
    );
    if (body.isNotEmpty) debugPrint(_clip(_prettyJson(body)));
  }

  /// Unique marker prefixing every single-line response log — filter the
  /// console with `grep "NEC-RESP"` (or your IDE's log filter) to see only
  /// these.
  static const String responseTag = 'NEC-RESP «';

  static void logBinaryResponse({
    required http.BaseRequest request,
    required int statusCode,
    required int bytesLength,
    required int duration,
  }) {
    if (!kDebugMode) return;

    final attempt = _attempt(request);
    final badge = _badge(statusCode);
    final speed = _speed(duration);
    final path = request.url.path;

    final b = StringBuffer()
      ..writeln(_top('◀  BINARY RESPONSE'))
      ..writeln('│')
      ..writeln(
        '│  $badge  $statusCode   $path   ${duration}ms$speed   #$attempt',
      )
      ..writeln('│  🌐  ${request.url}')
      ..writeln(_thin)
      ..writeln('│  📄  ${_bytes(bytesLength)}')
      ..writeln('│')
      ..write(_bot);

    log('\n${b.toString()}', name: 'HTTP');
  }

  static void logException({
    required http.BaseRequest request,
    required Object exception,
  }) {
    if (!kDebugMode) return;

    final type = exception.runtimeType.toString();
    final msg = _clip(exception.toString(), 400);

    final b = StringBuffer()
      ..writeln(_top('✖  EXCEPTION'))
      ..writeln('│')
      ..writeln('│  ${request.method}  ${request.url.path}')
      ..writeln('│  🌐  ${request.url}')
      ..writeln(_thin)
      ..writeln('│  ⚡  $type')
      ..writeln('│  ${_wrapLines(msg, '│     ')}')
      ..writeln('│')
      ..write(_bot);

    log('\n${b.toString()}', name: 'HTTP');
  }

  static void logTokenRefresh({required bool success, String? hint}) {
    if (!kDebugMode) return;

    final icon = success ? '✅' : '❌';
    final status = success
        ? 'SUCCESS  →  new JWT stored'
        : 'FAILED${hint != null ? '  ($hint)' : ''}';

    final b = StringBuffer()
      ..writeln(_top('🔑  TOKEN REFRESH'))
      ..writeln('│')
      ..writeln('│  $icon  $status')
      ..writeln('│')
      ..write(_bot);

    log('\n${b.toString()}', name: 'HTTP');
  }

  // ─── Private helpers ──────────────────────────────────────────────────────

  static int _attempt(http.BaseRequest r) =>
      int.tryParse(r.headers['x-retry-attempt'] ?? '0') ?? 0;

  static String _ts() {
    final t = DateTime.now();
    return '${_z(t.hour)}:${_z(t.minute)}:${_z(t.second)}.${t.millisecond.toString().padLeft(3, '0')}';
  }

  static String _z(int n) => n.toString().padLeft(2, '0');

  static String _pad(String s, int width) => s.toUpperCase().padRight(width);

  static String _badge(int code) {
    if (code >= 200 && code < 300) return '✅';
    if (code >= 300 && code < 400) return '↪️ ';
    if (code >= 400 && code < 500) return '⚠️ ';
    return '❌';
  }

  static String _speed(int ms) {
    if (ms >= 5000) return '  🐢 very slow';
    if (ms >= 2000) return '  ⏱ slow';
    return '';
  }

  static String _bytes(int b) {
    if (b < 1024) return '$b B';
    if (b < 1024 * 1024) {
      return '${(b / 1024).toStringAsFixed(1)} KB  ($b bytes)';
    }
    return '${(b / (1024 * 1024)).toStringAsFixed(2)} MB  ($b bytes)';
  }

  static String _clip(String s, [int max = _maxBody]) {
    if (s.length <= max) return s;
    return '${s.substring(0, max)}\n│  … [+${s.length - max} chars truncated]';
  }

  static String _wrapLines(String s, String prefix) =>
      s.replaceAll('\n', '\n$prefix');

  static void _appendJson(StringBuffer b, String raw) {
    final pretty = _prettyJson(raw);
    final clipped = _clip(pretty);
    for (final line in clipped.split('\n')) {
      b.writeln('│    $line');
    }
  }

  static Map<String, String> _sanitizeHeaders(Map<String, String> headers) {
    final copy = Map<String, String>.from(headers)..remove('x-retry-attempt');
    if (copy.containsKey('Authorization')) {
      copy['Authorization'] = 'Bearer [REDACTED]';
    }
    return copy;
  }

  static String _prettyJson(String raw) {
    try {
      return const JsonEncoder.withIndent('  ').convert(jsonDecode(raw));
    } catch (_) {
      return raw;
    }
  }
}

// ---------------------------------------------------------------------------
// Binary response converter (used by @FactoryConverter on receipt endpoints)
// ---------------------------------------------------------------------------

Response<List<int>> _binaryConverter(Response response) {
  return response.copyWith<List<int>>(body: response.bodyBytes);
}
