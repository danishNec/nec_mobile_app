// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'api_services.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ApiServices extends ApiServices {
  _$ApiServices([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ApiServices;

  @override
  Future<Response<dynamic>> getKycComboList() {
    final Uri $url = Uri.parse('/api/auth/get-kyc-combo-list');
    final Map<String, String> $headers = {'x-skip-auth': 'true'};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> postRequestOtp(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/auth/request-otp');
    final Map<String, String> $headers = {'x-skip-auth': 'true'};
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> postVerifyOtp(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/auth/verify-login-otp');
    final Map<String, String> $headers = {'x-skip-auth': 'true'};
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> postVerifyMpin(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/auth/verify-mpin');
    final Map<String, String> $headers = {'x-skip-auth': 'true'};
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> postSetMpin({
    required String? token,
    required Map<String, dynamic> body,
  }) {
    final Uri $url = Uri.parse('/api/auth/update-mpin');
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> postVerifyBiometric(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/auth/Verify_Biometric');
    final Map<String, String> $headers = {'x-skip-auth': 'true'};
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> postRequestEmailOtp({
    required String? token,
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse('/api/auth/request-email-otp');
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> postVerifyEmailOtp({
    required String? token,
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse('/api/auth/email-updation');
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getAdvertisement() {
    final Uri $url = Uri.parse('/api/auth/GetBanners');
    final Map<String, String> $headers = {'x-skip-auth': 'true'};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getAppVersionConfig() {
    final Uri $url = Uri.parse('/api/app/version-config');
    final Map<String, String> $headers = {'x-skip-auth': 'true'};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getUserInfo({required String? token}) {
    final Uri $url = Uri.parse('/api/customer/get-user');
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getRecentBeneficiaries({
    required String? token,
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse('/api/beneficiary/get-recent-beneficiary-list');
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getCurrencies({
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse('/api/customer/get-currency-list');
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {'x-skip-auth': 'true'};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> createTemporarySession({
    required String? token,
    required Map<String, dynamic> body,
  }) {
    final Uri $url = Uri.parse(
      '/api/Transaction/PaymentGatewy-quick-transaction',
    );
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> statusEnquiry({
    required String? token,
    required String temporarySessionId,
  }) {
    final Uri $url = Uri.parse('/api/payment/GetPaymentStatus');
    final Map<String, dynamic> $params = <String, dynamic>{
      'trackId': temporarySessionId,
    };
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getTransferTypes({
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse('/api/customer/get-transfer-mode-list');
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {'x-skip-auth': 'true'};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getBankOrAgents({
    required String? token,
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse('/api/customer/get-product-list');
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getPaymentModes() {
    final Uri $url = Uri.parse('/api/transaction/get-payment-mode-list');
    final Map<String, String> $headers = {'x-skip-auth': 'true'};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getCalculatedAmount(
    Map<String, dynamic> queryParams,
  ) {
    final Uri $url = Uri.parse('/api/transaction/calculate-amount');
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {'x-skip-auth': 'true'};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getBeneficiaries({
    required String? token,
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse('/api/beneficiary/get-beneficiary-list');
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getProductFieldSettings({
    required String? token,
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse(
      '/api/beneficiary/get-all-product-field-settings',
    );
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getSourceOfFund({
    required String? token,
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse('/api/transaction/get-income-source-combo-list');
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getPurposeOfTransfer({
    required String? token,
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse('/api/transaction/get-purpose-combo-list');
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getBeneficiaryCombo({
    required String? token,
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse('/api/beneficiary/get-beneficiary-combo-list');
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getNotifications({
    required String? token,
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse('/api/notification/get-notification-list');
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getBankCombo({
    required String? token,
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse(
      '/api/beneficiary/get-beneficiary-bank-combo-list',
    );
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getBankBranchCombo({
    required String? token,
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse(
      '/api/beneficiary/get-beneficiary-branch-combo-list',
    );
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getRouteCode({
    required String? token,
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse(
      '/api/beneficiary/get-beneficiary-route-code-combo-list',
    );
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> postRequestBeneficiaryOtp({
    required String? token,
    required Map<String, dynamic> body,
  }) {
    final Uri $url = Uri.parse('/api/auth/request-Beneficiary-otp');
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> postVerifyBeneficiaryOtp({
    required String? token,
    required Map<String, dynamic> body,
  }) {
    final Uri $url = Uri.parse('/api/auth/verify-Benficiary-login-otp');
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> deleteBeneficiary({
    required String? token,
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse('/api/beneficiary/delete-beneficiary');
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getBankBranchFromRoute({
    required String? token,
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse('/api/beneficiary/get-beneficiary-bank-details');
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getBeneficiaryById({
    required String? token,
    required String? beneficiaryId,
  }) {
    final Uri $url = Uri.parse('/api/Beneficiary/get-beneficiary-by-id');
    final Map<String, dynamic> $params = <String, dynamic>{
      'eId': beneficiaryId,
    };
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getValidateBeneficiary({
    required String token,
    required String productCode,
    required String transferTypeCode,
    required String memberSection,
    required String beneficiaryCountryCode,
    required String language,
    required String beneficiaryCode,
  }) {
    final Uri $url = Uri.parse(
      '/api/Beneficiary/get-all-beneficiary-product-field-settings',
    );
    final Map<String, dynamic> $params = <String, dynamic>{
      'ProductCode': productCode,
      'DisbursalModeCode': transferTypeCode,
      'MemberSection': memberSection,
      'CountryCode': beneficiaryCountryCode,
      'Language': language,
      'BeneficiaryId': beneficiaryCode,
    };
    final Map<String, String> $headers = {'Authorization': token};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getProfile({required String? token}) {
    final Uri $url = Uri.parse('/api/auth/get-profile');
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getTransactionHistories({
    required String? token,
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse('/api/transaction/get-transaction-list');
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getBranches() {
    final Uri $url = Uri.parse('/api/customer/get-branch-list');
    final Map<String, String> $headers = {'x-skip-auth': 'true'};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getCountryCombo() {
    final Uri $url = Uri.parse('/api/Customer/get-country-combo-list');
    final Map<String, String> $headers = {'x-skip-auth': 'true'};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getTransactionDetails({
    required String? token,
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse('/api/Transaction/get-transaction');
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<int>>> downloadOrShareReceipt({
    required String? token,
    required Map<String, dynamic> queryParams,
  }) {
    final Uri $url = Uri.parse('/api/Transaction/print-receipt');
    final Map<String, dynamic> $params = queryParams;
    final Map<String, String> $headers = {
      if (token != null) 'Authorization': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<List<int>, int>(
      $request,
      responseConverter: _binaryConverter,
    );
  }
}
