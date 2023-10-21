import 'dart:io';

import 'package:di4l_pos/common/global_configs.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/add_status_order/request/add_status_order_request.dart';
import 'package:di4l_pos/models/add_status_order/response/add_status_order_response.dart';
import 'package:di4l_pos/models/affiliate_marketing/request/create_payment_request.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_payment_history_response.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_referral_users_response.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_withdraw_request_response.dart';
import 'package:di4l_pos/models/base/response/error_response.dart';
import 'package:di4l_pos/models/base/response/status_response.dart';
import 'package:di4l_pos/models/base/response/sucess_response.dart';
import 'package:di4l_pos/models/booking/request/create_booking_request.dart';
import 'package:di4l_pos/models/booking/request/update_booking_request.dart';
import 'package:di4l_pos/models/booking/response/booking_response.dart';
import 'package:di4l_pos/models/branch/add_branch_request.dart';
import 'package:di4l_pos/models/branch/response/add_brand_response.dart';
import 'package:di4l_pos/models/branch/response/branch_response.dart';
import 'package:di4l_pos/models/business_location/request/update_business_location_request.dart';
import 'package:di4l_pos/models/business_location/request/update_location_settings_request.dart';
import 'package:di4l_pos/models/business_location/response/business_location_response.dart';
import 'package:di4l_pos/models/business_location/response/business_settings_response.dart';
import 'package:di4l_pos/models/business_location/response/update_business_location_response.dart';
import 'package:di4l_pos/models/cart_table_order/add_order_request.dart';
import 'package:di4l_pos/models/cash_register/request/add_cash_register_request.dart';
import 'package:di4l_pos/models/cash_register/request/get_cash_register_request.dart';
import 'package:di4l_pos/models/cash_register/response/add_cash_register_response.dart';
import 'package:di4l_pos/models/cash_register/response/cash_register_response.dart';
import 'package:di4l_pos/models/category/request/add_category_request.dart';
import 'package:di4l_pos/models/category/request/get_category_request.dart';
import 'package:di4l_pos/models/category/response/add_category_response.dart';
import 'package:di4l_pos/models/category/response/category_response.dart';
import 'package:di4l_pos/models/contacts/request/add_contact_request.dart';
import 'package:di4l_pos/models/contacts/response/add_contact_response.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/models/contacts/response/ledger_response.dart';
import 'package:di4l_pos/models/customer-group/request/add_customer_group_request.dart';
import 'package:di4l_pos/models/customer-group/response/add_customer_group_response.dart';
import 'package:di4l_pos/models/customer-group/response/customer_group_response.dart';
import 'package:di4l_pos/models/delivery/request/connect_ghn_request.dart';
import 'package:di4l_pos/models/delivery/request/connect_ghtk_request.dart';
import 'package:di4l_pos/models/delivery/request/connect_viettel_post_request.dart';
import 'package:di4l_pos/models/delivery/request/phone_ghn_request.dart';
import 'package:di4l_pos/models/delivery/request/save_connect_ghtk_request.dart';
import 'package:di4l_pos/models/delivery/request/save_connect_viettel_post_request.dart';
import 'package:di4l_pos/models/delivery/response/connect_ghn_response.dart';
import 'package:di4l_pos/models/delivery/response/connect_ghtk_response.dart';
import 'package:di4l_pos/models/delivery/response/connect_viettel_post_response.dart';
import 'package:di4l_pos/models/delivery/response/delivery_response.dart';
import 'package:di4l_pos/models/delivery/response/get_otp_ghn_response.dart';
import 'package:di4l_pos/models/delivery/response/ghn_detail_response.dart';
import 'package:di4l_pos/models/delivery/response/ghtk_detail_response.dart';
import 'package:di4l_pos/models/delivery/response/locations_ghn_response.dart';
import 'package:di4l_pos/models/delivery/response/save_connect_ghtk_response.dart';
import 'package:di4l_pos/models/delivery/response/save_connect_viettel_post_response.dart';
import 'package:di4l_pos/models/get_link/request/into_link_request.dart';
import 'package:di4l_pos/models/get_link/response/get_link_response.dart';
import 'package:di4l_pos/models/invoice/response/invoice_layout_response.dart';
import 'package:di4l_pos/models/invoice/response/invoice_schemas_response.dart';
import 'package:di4l_pos/models/kitchen/kitchen_detail_response.dart';
import 'package:di4l_pos/models/kitchen/kitchen_response.dart';
import 'package:di4l_pos/models/location/response/locations_response.dart';
import 'package:di4l_pos/models/modifier_set/modifier_set_response.dart';
import 'package:di4l_pos/models/notifications/response/notification_response.dart';
import 'package:di4l_pos/models/payment_accounts/request/account_type_request.dart';
import 'package:di4l_pos/models/payment_accounts/request/add_payment_account_request.dart';
import 'package:di4l_pos/models/payment_accounts/request/deposit_request.dart';
import 'package:di4l_pos/models/payment_accounts/request/fund_transfer_request.dart';
import 'package:di4l_pos/models/payment_accounts/response/account_type_response.dart';
import 'package:di4l_pos/models/payment_accounts/response/add_account_type_response.dart';
import 'package:di4l_pos/models/payment_accounts/response/add_payment_account_response.dart';
import 'package:di4l_pos/models/payment_accounts/response/payment_account_response.dart';
import 'package:di4l_pos/models/payment_accounts/response/payment_accounts_response.dart';
import 'package:di4l_pos/models/price/add_price_request.dart';
import 'package:di4l_pos/models/price/response/add_price_response.dart';
import 'package:di4l_pos/models/price/response/price_response.dart';
import 'package:di4l_pos/models/printer/request/add_printer_request.dart';
import 'package:di4l_pos/models/printer/response/add_printer_response.dart';
import 'package:di4l_pos/models/products/request/add_product_request.dart';
import 'package:di4l_pos/models/products/request/get_products_request.dart';
import 'package:di4l_pos/models/products/response/add_product_response.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:di4l_pos/models/reports/responses/expense_report_response.dart';
import 'package:di4l_pos/models/revenue_expense/request/add_expense_category.dart';
import 'package:di4l_pos/models/revenue_expense/request/add_expense_request.dart';
import 'package:di4l_pos/models/revenue_expense/response/add_expense_response.dart';
import 'package:di4l_pos/models/revenue_expense/response/expense_category_response.dart';
import 'package:di4l_pos/models/revenue_expense/response/expense_response.dart';
import 'package:di4l_pos/models/sell_report/reponse/sell_report_response.dart';
import 'package:di4l_pos/models/reports/responses/profit_andd_loss_response.dart';
import 'package:di4l_pos/models/reports/responses/report_stock_response.dart';
import 'package:di4l_pos/models/sell/request/add_sell_request.dart';
import 'package:di4l_pos/models/sell/response/sell_response.dart';
import 'package:di4l_pos/models/sell/request/get_sell_request.dart';
import 'package:di4l_pos/models/shopinfo/response/TaxResponse.dart';
import 'package:di4l_pos/models/staff_management/response/delete_staff_reponse.dart';
import 'package:di4l_pos/models/staff_management/response/staff_create_response.dart';
import 'package:di4l_pos/models/staff_management/response/staff_response.dart';
import 'package:di4l_pos/models/staff_management/response/staff_detail_response.dart';
import 'package:di4l_pos/models/staff_management/response/update_staff_reponse.dart';
import 'package:di4l_pos/models/staff_management/request/update_staff_request.dart';
import 'package:di4l_pos/models/staff_management/request/create_staff_request.dart';
import 'package:di4l_pos/models/stock_adjustment/request/add_stock_adjustment_request.dart';
import 'package:di4l_pos/models/stock_adjustment/response/add_stock_adjustment_response.dart';
import 'package:di4l_pos/models/stock_adjustment/response/stock_adjustment_detail_response.dart';
import 'package:di4l_pos/models/stock_adjustment/response/stock_adjustment_response.dart';
import 'package:di4l_pos/models/shopinfo/request/shopSettingPUTRq.dart';
import 'package:di4l_pos/models/shopinfo/response/Currency.dart';
import 'package:di4l_pos/models/shopinfo/response/DefaultUnit.dart';
import 'package:di4l_pos/models/shopinfo/response/ShopSettingRp.dart';
import 'package:di4l_pos/models/shopinfo/response/UpdateBusinessRp.dart';
import 'package:di4l_pos/models/stock_purchases/request/add_stock_purchase_request.dart';
import 'package:di4l_pos/models/stock_purchases/response/add_stock_purchase_response.dart';
import 'package:di4l_pos/models/stock_purchases/response/purchases_create_response.dart';
import 'package:di4l_pos/models/stock_purchases/response/stock_purchases_detail_response.dart';
import 'package:di4l_pos/models/stock_transfers/request/add_stock_transfers_request.dart';
import 'package:di4l_pos/models/stock_transfers/response/add_stock_transfers_response.dart';
import 'package:di4l_pos/models/stock_transfers/response/stock_transfers_detail_response.dart';
import 'package:di4l_pos/models/stock_transfers/response/stock_transfers_response.dart';
import 'package:di4l_pos/models/transaction/response/transaction_response.dart';
import 'package:di4l_pos/models/unit/add_unit_request.dart';
import 'package:di4l_pos/models/unit/response/add_unit_reponse.dart';
import 'package:di4l_pos/models/unit/response/unit_response.dart';
import 'package:di4l_pos/models/user/request/account_request.dart';
import 'package:di4l_pos/models/user/request/change_password_request.dart';
import 'package:di4l_pos/models/user/request/login_request.dart';
import 'package:di4l_pos/models/user/request/register_request.dart';
import 'package:di4l_pos/models/user/request/token_request.dart';
import 'package:di4l_pos/models/user/request/update_profile_request.dart';
import 'package:di4l_pos/models/user/response/account_response.dart';
import 'package:di4l_pos/models/user/response/login_response.dart';
import 'package:di4l_pos/models/user/response/profile_response.dart';
import 'package:di4l_pos/models/user/response/register_response.dart';
import 'package:di4l_pos/models/user/response/token_response.dart';
import 'package:di4l_pos/models/user/response/user_list_response.dart';
import 'package:di4l_pos/models/user/response/user_response.dart';
import 'package:di4l_pos/models/variants/request/add_variantion_request.dart';
import 'package:di4l_pos/models/variants/response/variants_response.dart';
import 'package:di4l_pos/models/warranty/warranty_request.dart';
import 'package:di4l_pos/models/warranty/warranty_response.dart';
import 'package:di4l_pos/models/product_stock/request/add_product_stock_request.dart';
import 'package:di4l_pos/models/product_stock/response/add_product_stock_response.dart';
import 'package:di4l_pos/models/printer/response/printer_response.dart';
import 'package:di4l_pos/networks/rest_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:di4l_pos/models/table/response/table_response.dart';
import 'package:di4l_pos/models/stock_purchases/response/stock_purchases_response.dart';
import 'package:di4l_pos/models/introduction/introduction_response.dart';

import '../models/affiliate_marketing/response/affiliate_base_response.dart';
import '../models/affiliate_marketing/response/affiliate_users_response.dart';
import '../models/delete_response/delete_response.dart';
import 'package:flutter/services.dart';

@lazySingleton
class DataRepository implements RestClient {
  /// MARK: - Initials;
  final dio = Dio();
  RestClient? _client;
  final _appPrefs = getIt<AppPref>();

  DataRepository() {
    if (kDebugMode) {
      dio.interceptors
          .add(LogInterceptor(requestBody: true, responseBody: true));
    }
    dio.options.contentType = Headers.jsonContentType;
    dio.options.responseType = ResponseType.json;
    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.headers['Accept'] = 'application/json';

    /// Add Middleware Authorization
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) async {
      final token = (await _appPrefs.getToken())?.accessToken ?? '';
      options.headers['Authorization'] = 'Bearer $token';
      options.headers['Content-Type'] = 'application/json';
      options.headers['Accept'] = 'application/json';
      return handler.next(options);
    }));

    /// Middleware Error Handling
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error1, handler) {
          final errorResponse = ErrorResponse.fromJson(error1.response?.data);
          final error = DioError(
            requestOptions: RequestOptions(path: ''),
            error: errorResponse.toJson(),
          );
          return handler.reject(error);
        },
      ),
    );
    _client = RestClient(dio, baseUrl: GlobalConfigs.kBaseUrl);
  }

  @override
  Future<LocationsResponse> getLocations({int? page, int? parent}) async {
    return await _client!.getLocations(page: page, parent: parent);
  }

  @override
  Future<List<InvoiceSchema>> getInvoices() async {
    return await _client!.getInvoices();
  }

  @override
  Future<List<InvoiceLayout>> getInvoiceLayouts() async {
    return await _client!.getInvoiceLayouts();
  }

  @override
  Future<TokenResponse> getToken({required TokenRequest request}) {
    return _client!.getToken(request: request);
  }

  @override
  Future<LoginResponse> login({required LoginRequest request}) {
    return _client!.login(request: request);
  }

  @override
  Future<LoginResponse> loginSocial({required LoginSocial request}) {
    return _client!.loginSocial(request: request);
  }

  @override
  Future<AccountResponse> switchAccount() {
    return _client!.switchAccount();
  }

  @override
  Future<LoginResponse> postSwitchAccount({required AccountRequest request}) {
    return _client!.postSwitchAccount(request: request);
  }

  @override
  Future<UserResponse> loggedIn() {
    return _client!.loggedIn();
  }

  @override
  Future<SuccessResponse> forgetPassword({required SendEmailRequest request}) {
    return _client!.forgetPassword(request: request);
  }

  @override
  Future<ProductResponse> getProducts({required GetProductsRequest request}) {
    return _client!.getProducts(request: request);
  }

  @override
  Future<UnitResponse> getUnits() {
    return _client!.getUnits();
  }

  @override
  Future<CategoryResponse> getCategory({required GetCategoryRequest request}) {
    return _client!.getCategory(request: request);
  }

  @override
  Future<BranchResponse> getBranch() {
    return _client!.getBranch();
  }

  @override
  Future<PriceResponse> getPriceGroup() {
    return _client!.getPriceGroup();
  }

  @override
  Future<NotificationResponse> getNotifications() {
    return _client!.getNotifications();
  }

  @override
  Future<SuccessResponse> updatePassword(
      {required ChangePasswordRequest request}) {
    return _client!.updatePassword(request: request);
  }

  @override
  Future<VariantsResponse> getVariants() {
    return _client!.getVariants();
  }

  /// Booking repo
  @override
  Future<BookingResponse> getBookings() async {
    return await _client!.getBookings();
  }

  @override
  Future<SuccessResponse> deleteBooking({required int id}) async {
    return await _client!.deleteBooking(id: id);
  }

  @override
  Future<SuccessResponse> createBooking(
      {required CreateBookingRequest request}) async {
    return await _client!.createBooking(request: request);
  }

  @override
  Future<SuccessResponse> updateBookingStatus({
    required int id,
    required UpdateBookingRequest request,
  }) async {
    return await _client!.updateBookingStatus(id: id, request: request);
  }

  /// Users repo
  @override
  Future<UserListResponse> getUsers({int? page}) async {
    return await _client!.getUsers(page: page);
  }

  ///Contact Repo
  @override
  Future<ContactsResponse> getContacts({required String type, int? page}) {
    return _client!.getContacts(type: type, page: page);
  }

  @override
  Future<ContactsResponse> getAllContacts(
      {required String type, int? perPage}) {
    return _client!.getAllContacts(type: type, perPage: perPage);
  }

  @override
  Future<LedgerResponse> getLedger(
      {required int id, String? startDate, String? endDate}) {
    return _client!.getLedger(id: id, startDate: startDate, endDate: endDate);
  }

  @override
  Future<ProductResponse> getProductById({required int id}) {
    return _client!.getProductById(id: id);
  }

  @override
  Future<AddContactResponse> addContact({required AddContactRequest request}) {
    return _client!.addContact(request: request);
  }

  @override
  Future<AddContactResponse> updateContact(
      {required AddContactRequest request, required int id}) {
    return _client!.updateContact(request: request, id: id);
  }

  @override
  Future deleteContact({required int id}) {
    return _client!.deleteContact(id: id);
  }

  @override
  Future<TransactionResponse> transactionByContact({required int contactId}) {
    return _client!.transactionByContact(contactId: contactId);
  }

  @override
  Future<SellResponse> getSellById(
      {required int contactId, String? startDate, String? endDate}) {
    return _client!.getSellById(
        contactId: contactId, startDate: startDate, endDate: endDate);
  }

  @override
  Future<TransactionResponse> transactionContactByStatus(
      {required String status}) {
    return _client!.transactionContactByStatus(status: status);
  }

  @override
  Future<TransactionResponse> transactionContactByPaymentStatus(
      {required String status}) {
    return _client!.transactionContactByPaymentStatus(status: status);
  }

  @override
  Future<TransactionResponse> transactionOfContactWithPaymentStatus(
      {required String status,
      required int contactId,
      required String timeRange}) {
    return _client!.transactionOfContactWithPaymentStatus(
        status: status, contactId: contactId, timeRange: timeRange);
  }

  ///
  @override
  Future<ProfitAndLossResponse> getProfitAndLoss(
      {String? startDate, String? endDate}) {
    return _client!.getProfitAndLoss(startDate: startDate, endDate: endDate);
  }

  @override
  Future<List<ExpenseReportResponse>> getExpenseReport(
      {String? startDate, String? endDate}) {
    return _client!.getExpenseReport(startDate: startDate, endDate: endDate);
  }

  @override
  Future<ReportStockResponse> getReportStock() {
    return _client!.getReportStock();
  }

  @override
  Future<CashRegisterResponse> getCashRegister(
      {required GetCashRegisterRequest request}) {
    return _client!.getCashRegister(request: request);
  }

  @override
  Future<AddCashRegisterResponse> addCashRegister(
      {required AddCashRegisterRequest request}) {
    return _client!.addCashRegister(request: request);
  }

  @override
  Future<SellResponse> getSell({int? page, required GetSellRequest request}) {
    return _client!.getSell(
      request: request,
      page: page,
    );
  }

  @override
  Future<SellResponse> getOrder(
      {int? page,
      String? startDate,
      String? endDate,
      String? locationId,
      String? customerId,
      String? paymentStatus,
      int? onlySubscriptions,
      String? shippingStatus}) {
    return _client!.getOrder(
      page: page,
      startDate: startDate,
      endDate: endDate,
      locationId: locationId,
      customerId: customerId,
      onlySubscriptions: onlySubscriptions,
      paymentStatus: paymentStatus!.toLowerCase(),
      shippingStatus: shippingStatus!.toLowerCase(),
    );
  }

  @override
  Future<SellResponse> getOrderReport({
    int? page,
    String? startDate,
    String? endDate,
  }) {
    return _client!.getOrderReport(
      page: page,
      startDate: startDate,
      endDate: endDate,
    );
  }

  @override
  Future<SellResponse> getSellReturn({required GetSellRequest request}) {
    return _client!.getSellReturn(request: request);
  }

  @override
  Future<AddCategoryResponse> addCategory(
      {required AddCategoryRequest request}) {
    return _client!.addCategory(request: request);
  }

  @override
  Future<AddCategoryResponse> updateCategory(
      {required AddCategoryRequest request, required int id}) {
    return _client!.updateCategory(request: request, id: id);
  }

  @override
  Future deleteCategory({required int id}) {
    return _client!.deleteCategory(id: id);
  }

  @override
  Future<AddBranchResponse> addBranch({required AddBranchRequest request}) {
    return _client!.addBranch(request: request);
  }

  @override
  Future<AddBranchResponse> updateBranch(
      {required AddBranchRequest request, required int id}) {
    return _client!.updateBranch(request: request, id: id);
  }

  @override
  Future deleteBrand({required int id}) {
    return _client!.deleteBrand(id: id);
  }

  @override
  Future<AddUnitResponse> addUnit({required AddUnitRequest request}) {
    return _client!.addUnit(request: request);
  }

  @override
  Future<AddUnitResponse> updateUnit(
      {required AddUnitRequest request, required int id}) {
    return _client!.updateUnit(request: request, id: id);
  }

  @override
  Future<DeteleResponse> deleteUnit({required int id}) {
    return _client!.deleteUnit(id: id);
  }

  @override
  Future<AddPriceResponse> addPrice({required AddPriceRequest request}) {
    return _client!.addPrice(request: request);
  }

  @override
  Future<AddPriceResponse> updatePrice(
      {required AddPriceRequest request, required int id}) {
    return _client!.updatePrice(request: request, id: id);
  }

  @override
  Future deletePrice({required int id}) {
    return _client!.deletePrice(id: id);
  }

  @override
  Future<BusinessSettingsResponse> getBusinessSettings() async {
    return await _client!.getBusinessSettings();
  }

  @override
  Future<StatusResponse> createBusiness(
      {required UpdateBusinessLocationRequest request}) async {
    return await _client!.createBusiness(request: request);
  }

  @override
  Future<BusinessLocationResponse> getDetailsBusinessLocation(
      {required int id}) async {
    return await _client!.getDetailsBusinessLocation(id: id);
  }

  @override
  Future<BusinessLocationResponse> getBusinessLocation() {
    return _client!.getBusinessLocation();
  }

  @override
  Future<UpdateBusinessLocationResponse> updateBusiness(
      {required int id, required UpdateBusinessLocationRequest request}) {
    return _client!.updateBusiness(id: id, request: request);
  }

  @override
  Future<StatusResponse> updateLocationSettings(
      {required int id, required UpdateLocationSettingsRequest request}) {
    return _client!.updateLocationSettings(id: id, request: request);
  }

  @override
  Future<PaymentAccountsResponse> getPaymentAccounts() async {
    return await _client!.getPaymentAccounts();
  }

  @override
  Future<PaymentAccountResponse> getPaymentAccount(
      {required int id, String? startDate, String? endDate}) async {
    return _client!
        .getPaymentAccount(id: id, startDate: startDate, endDate: endDate);
  }

  @override
  Future<AddPaymentAccountResponse> addPaymentAccount(
      {required AddPaymentAccountRequest request}) {
    return _client!.addPaymentAccount(request: request);
  }

  @override
  Future<AddPaymentAccountResponse> updatePaymentAccount(
      {required AddPaymentAccountRequest request, required int id}) {
    return _client!.updatePaymentAccount(request: request, id: id);
  }

  @override
  Future closePaymentAccount({required int id}) {
    return _client!.closePaymentAccount(id: id);
  }

  @override
  Future activatePaymentAccount({required int id}) {
    return _client!.activatePaymentAccount(id: id);
  }

  @override
  Future<AddAccountTypeResponse> fundTransfer(
      {required FundTransferRequest request}) {
    return _client!.fundTransfer(request: request);
  }

  @override
  Future<AddAccountTypeResponse> deposit({required DepositRequest request}) {
    return _client!.deposit(request: request);
  }

  @override
  Future<AccountTypeResponse> getAccountTypes() async {
    return await _client!.getAccountTypes();
  }

  @override
  Future<AddAccountTypeResponse> addAccountType(
      {required AccountTypeRequest request}) {
    return _client!.addAccountType(request: request);
  }

  @override
  Future<AddAccountTypeResponse> updateAccountType(
      {required AccountTypeRequest request, required int id}) {
    return _client!.updateAccountType(request: request, id: id);
  }

  @override
  Future deleteAccountType({required int id}) {
    return _client!.deleteAccountType(id: id);
  }

  @override
  Future<CustomerGroupResponse> getCustomerGroups() {
    return _client!.getCustomerGroups();
  }

  @override
  Future<CustomerGroupResponse> getCustomerGroup({required int id}) {
    return _client!.getCustomerGroup(id: id);
  }

  @override
  Future<AddCustomerGroupResponse> addCustomerGroup(
      {required AddCustomerGroupRequest request}) {
    return _client!.addCustomerGroup(request: request);
  }

  @override
  Future<AddCustomerGroupResponse> updateCustomerGroup(
      {required AddCustomerGroupRequest request, required int id}) {
    return _client!.updateCustomerGroup(request: request, id: id);
  }

  @override
  Future deleteCustomerGroup({required int id}) {
    return _client!.deleteCustomerGroup(id: id);
  }

  @override
  Future<AddProductResponse> addProduct({
    required String name,
    String? sku,
    String? barcodeType,
    String? taxType,
    String? type,
    int? branchId,
    int? unitId,
    int? categoryId,
    int? warrantyId,
    String? tax,
    String? alertQuantity,
    String? productDescription,
    int? enableStock,
    int? notForSelling,
    double? defaultSellPrice,
    double? defaultPurchasePrice,
    bool? enableProductExpiry,
    dynamic expiryPeriodType,
    dynamic expiryPeriod,
    int? enableSrNo,
    List<ProductVariationRequest>? productVariationRequests,
    File? file,
  }) {
    return _client!.addProduct(
      name: name,
      sku: sku,
      branchId: branchId,
      unitId: unitId,
      categoryId: categoryId,
      warrantyId: warrantyId,
      tax: tax,
      barcodeType: barcodeType,
      alertQuantity: alertQuantity,
      taxType: taxType,
      productDescription: productDescription,
      type: type,
      enableStock: enableStock,
      notForSelling: notForSelling,
      enableProductExpiry: enableProductExpiry,
      expiryPeriodType: expiryPeriodType,
      expiryPeriod: expiryPeriod,
      enableSrNo: enableSrNo,
      defaultPurchasePrice: defaultPurchasePrice,
      defaultSellPrice: defaultSellPrice,
      productVariationRequests: productVariationRequests,
      file: file,
    );
  }

  @override
  Future<AddProductResponse> updateProduct(
      {required int id,
      required String name,
      String? sku,
      String? barcodeType,
      String? taxType,
      String? type,
      int? branchId,
      int? unitId,
      int? categoryId,
      int? warrantyId,
      String? tax,
      String? alertQuantity,
      String? productDescription,
      int? enableStock,
      int? notForSelling,
      double? defaultSellPrice,
      double? defaultPurchasePrice,
      bool? enableProductExpiry,
      dynamic expiryPeriodType,
      dynamic expiryPeriod,
      int? enableSrNo,
      List<ProductVariationRequest>? productVariationRequests,
      File? file,
      String? slug,
      String? subCategoryId,
      String? productLocations,
      String? imageName,
      String? weight,
      String? productCustomField1,
      String? productCustomField2,
      String? productCustomField3,
      String? productCustomField4,
      String? featured,
      String? singleVariationId,
      String? singleDpp,
      String? singleDppIncTax,
      String? profitPercent,
      String? singleDsp,
      String? singleDspIncTax,
      String? submitType}) {
    return _client!.updateProduct(
        id: id,
        name: name,
        sku: sku,
        branchId: branchId,
        unitId: unitId,
        categoryId: categoryId,
        warrantyId: warrantyId,
        tax: tax,
        barcodeType: barcodeType,
        alertQuantity: alertQuantity,
        taxType: taxType,
        productDescription: productDescription,
        type: type,
        enableStock: enableStock,
        notForSelling: notForSelling,
        enableProductExpiry: enableProductExpiry,
        defaultPurchasePrice: defaultPurchasePrice,
        defaultSellPrice: defaultSellPrice,
        expiryPeriodType: expiryPeriodType,
        expiryPeriod: expiryPeriod,
        enableSrNo: enableSrNo,
        productVariationRequests: productVariationRequests,
        file: file,
        slug: "ao-thun-mua-he",
        subCategoryId: null,
        productLocations: "68",
        imageName: null,
        weight: "1000",
        productCustomField1: null,
        productCustomField2: null,
        productCustomField3: null,
        productCustomField4: null,
        featured: "0",
        singleVariationId: "530",
        singleDpp: "300,000.00",
        singleDppIncTax: "300,000.00",
        profitPercent: "375,000.00",
        singleDsp: "300,000.00",
        singleDspIncTax: "375,000.00",
        submitType: "submit");
  }

  @override
  Future deleteProduct({required int id}) {
    return _client!.deleteProduct(id: id);
  }

  @override
  Future<RegisterResponse> register({required RegisterRequest request}) {
    return _client!.register(request: request);
  }

  @override
  Future<RegisterResponse> addBusiness({required AddBusiness request}) {
    return _client!.addBusiness(request: request);
  }

  @override
  Future activeBusiness({required int id}) {
    return _client!.activeBusiness(id: id);
  }

  @override
  Future deleteBusiness({required int id}) {
    return _client!.deleteBusiness(id: id);
  }

  @override
  Future<WarrantyResponse> getWarranties() {
    return _client!.getWarranties();
  }

  @override
  Future<WarrantyUpdate> addWarranty({required AddWarrantyRequest request}) {
    return _client!.addWarranty(request: request);
  }

  @override
  Future<WarrantyUpdate> updateWarranty(
      {required AddWarrantyRequest request, required int id}) {
    return _client!.updateWarranty(request: request, id: id);
  }

  @override
  Future<SuccessResponse> addSell({required AddSellRequest request}) {
    return _client!.addSell(request: request);
  }

  @override
  Future<SuccessResponse> addVariantion({required AddVariantRequest request}) {
    return _client!.addVariantion(request: request);
  }

  @override
  Future<SuccessResponse> updateVariantion(
      {required AddVariantRequest request, required int id}) {
    return _client!.updateVariantion(request: request, id: id);
  }

  @override
  Future<SuccessResponse> updateAvatar({File? file}) {
    return _client!.updateAvatar(file: file);
  }

  @override
  Future<SuccessResponse> updateProfile(
      {required UpdateProfileRequest request}) {
    return _client!.updateProfile(request: request);
  }

  @override
  Future<ProfileResponse> getProfile() {
    return _client!.getProfile();
  }

  /// KitChen repo
  @override
  Future<KitchenResponse> getKitchens() {
    return _client!.getKitchens();
  }

  @override
  Future<KitchenDetailResponse> getDetailKitchens({required int id}) {
    return _client!.getDetailKitchens(id: id);
  }

  @override
  Future markAsCooked({required int id}) {
    return _client!.markAsCooked(id: id);
  }

  ///Table Order
  @override
  Future<TableResponse> getTables() {
    return _client!.getTables();
  }

  @override
  Future<TableModel> getTableWithId({required int id}) {
    return _client!.getTableWithId(id: id);
  }

  @override
  Future<ModifierResponse> getModifiers() {
    return _client!.getModifiers();
  }

  @override
  Future<SuccessResponse> addOrder({required AddOrderRequest request}) {
    return _client!.addOrder(request: request);
  }

  @override
  Future<List<String>> getListTimeZone() {
    return _client!.getListTimeZone();
  }

  @override
  Future<List<Currency>> getListCurrency() {
    return _client!.getListCurrency();
  }

  @override
  Future<SellReportResponse> getSellReport(
      {int? page, String? startDate, String? endDate}) {
    return _client!
        .getSellReport(page: page, startDate: startDate, endDate: endDate);
  }

  /// Expense
  @override
  Future<ExpenseResponse> getExpenses({String? startDate, String? endDate}) {
    return _client!.getExpenses(startDate: startDate, endDate: endDate);
  }

  @override
  Future<AddExpenseResponse> addExpense({required AddExpenseRequest request}) {
    return _client!.addExpense(request: request);
  }

  @override
  Future deleteExpense({required int id}) {
    return _client!.deleteExpense(id: id);
  }

  @override
  Future<ShopSettingRp> getInfoBussinessSetting() {
    return _client!.getInfoBussinessSetting();
  }

  @override
  Future<DefaultUnitRp> getListDFUnit() {
    return _client!.getListDFUnit();
  }

  @override
  Future<UpdateBusinessRp> updateInfoBusiness(
      {required ShopSettingRq request}) {
    return _client!.updateInfoBusiness(request: request);
  }

  @override
  Future<ExpenseCategoryResponse> getExpenseCateogries(
      {String? startDate, String? endDate}) {
    return _client!
        .getExpenseCateogries(startDate: startDate, endDate: endDate);
  }

  // Stock adjustments
  @override
  Future<StockAdjustmentResponse> getStockAdjustments({int? page}) {
    return _client!.getStockAdjustments(page: page);
  }

  @override
  Future<AddStockAdjustmentResponse> addStockAdjustment(
      {required AddStockAdjustmentRequest request}) {
    return _client!.addStockAdjustment(request: request);
  }

  @override
  Future<StockAdjustmentDetailResponse> getStockAdjustmentsDetail(
      {required int id}) {
    return _client!.getStockAdjustmentsDetail(id: id);
  }

  @override
  Future deleteStockAdjustment({required int id}) {
    return _client!.deleteStockAdjustment(id: id);
  }

  //stock purchases
  @override
  Future<StockPurchasesResponse> getStockPurchases({int? page}) {
    return _client!.getStockPurchases(page: page);
  }

  @override
  Future<PurchasesCreateResponse> getPurchasesCreate() {
    return _client!.getPurchasesCreate();
  }

  @override
  Future<StockPurchaseDetailResponse> getStockPurchaseDetail(
      {required int id}) {
    return _client!.getStockPurchaseDetail(id: id);
  }

  @override
  Future deleteStockPurchase({required int id}) {
    return _client!.deleteStockPurchase(id: id);
  }

  // stock transfer
  @override
  Future<StockTransfersResponse> getStockTransfers({int? page}) {
    return _client!.getStockTransfers(page: page);
  }

  @override
  Future<AddStockTransfersResponse> addStockTransfers(
      {required AddStockTransfersRequest request}) {
    return _client!.addStockTransfers(request: request);
  }

  @override
  Future<StockTransfersDetailResponse> getStockTransferDetail(
      {required int id}) {
    return _client!.getStockTransferDetail(id: id);
  }

  @override
  Future deleteStockTransfer({required int id}) {
    return _client!.deleteStockTransfer(id: id);
  }

  @override
  Future<AddExpenseCategoryResponse> addExpenseCateogry(
      {required AddExpenseCategoryRequest request}) {
    return _client!.addExpenseCateogry(request: request);
  }

  @override
  Future<UpdateBusinessRp> updateLogo({File? file}) {
    return _client!.updateLogo(file: file);
  }

  @override
  Future<TaxResponse> getTax() {
    return _client!.getTax();
  }

  // @override
  // Future<CustomerGroupResponse> getCustomerGroup({required int id}) {
  //   return _client!.getCustomerGroup(id: id);
  // }

  @override
  Future<AddStatusOrderResponse> addStatusOrder(
      {required AddStatusOrderRequest request}) {
    return _client!.addStatusOrder(request: request);
  }

  @override
  Future<AddStatusOrderResponse> updateStatusOrder(
      {required AddStatusOrderRequest request, required int id}) {
    return _client!.updateStatusOrder(request: request, id: id);
  }

  @override
  Future deleteStatusOrder({required int id}) {
    return _client!.deleteStatusOrder(id: id);
  }

  @override
  Future<AddProductStockResponse> addProductStock(
      {required AddProductStockRequest request}) {
    return _client!.addProductStock(request: request);
  }

  @override
  Future<ReportStockResponse> getReportStockManage() {
    return _client!.getReportStockManage();
  }

  @override
  Future<List<Printer>> getPrinters() {
    return _client!.getPrinters();
  }

  @override
  Future deletePrinter({required int id}) {
    return _client!.deletePrinter(id: id);
  }

  @override
  Future<AddPrinterResponse> addPrinter({required AddPrinterRequest request}) {
    return _client!.addPrinter(request: request);
  }

  @override
  Future<AddPrinterResponse> updatePrinter(
      {required AddPrinterRequest request, required int id}) {
    return _client!.updatePrinter(request: request, id: id);
  }

  @override
  Future<DeliveryResponse> getDeliveryPartners() {
    return _client!.getDeliveryPartners();
  }

  @override
  Future<ConnectGhtkResponse> connectGHTK(
      {required ConnectGhtkRequest request}) {
    return _client!.connectGHTK(request: request);
  }

  @override
  Future<SaveConnectGhtkResponse> saveConnectGHTK(
      {required SaveConnectGhtkRequest request}) {
    return _client!.saveConnectGHTK(request: request);
  }

  @override
  Future disconnectDelivery({required int id}) {
    return _client!.disconnectDelivery(id: id);
  }

  @override
  Future<LocationsGhnResponse> getLocationsGhn({required String token}) {
    return _client!.getLocationsGhn(token: token);
  }

  @override
  Future<ConnectViettelPostResponse> getLocationsViettelPost(
      {required String token}) {
    return _client!.getLocationsViettelPost(token: token);
  }

  @override
  Future<GetOtpGhnResponse> getOtpGhn({required PhoneGhnRequest request}) {
    return _client!.getOtpGhn(request: request);
  }

  @override
  Future<ConnectGhnResponse> connectGHN({required ConnectGhnRequest request}) {
    return _client!.connectGHN(request: request);
  }

  @override
  Future<ConnectViettelPostResponse> connectViettelPost(
      {required ConnectViettelPostRequest request}) {
    return _client!.connectViettelPost(request: request);
  }

  @override
  Future<SaveConnectViettelPostResponse> saveConnectViettelPost(
      {required SaveConnectViettelPostRequest request}) {
    return _client!.saveConnectViettelPost(request: request);
  }

  @override
  Future<GetLinkResponse> getLink() {
    return _client!.getLink();
  }

  @override
  Future intoLink({required IntoLinkRequest request}) {
    return _client!.intoLink(request: request);
  }

  @override
  Future<GhnDetailResponse> getDetailGhnDelivery({required int id}) {
    return _client!.getDetailGhnDelivery(id: id);
  }

  @override
  Future<GhtkDetailResponse> getDetailGhtkDelivery({required int id}) {
    return _client!.getDetailGhtkDelivery(id: id);
  }

  @override
  Future<DeteleResponse> deleteVariantion({required int id}) {
    return _client!.deleteVariantion(id: id);
  }

  @override
  Future<void> addQuantityStock({required}) {
    // TODO: implement addQuantityStock
    throw UnimplementedError();
  }

  @override
  Future<StaffResponse> getStaffList() {
    return _client!.getStaffList();
  }

  @override
  Future<StaffDetailResponse> getStaffDetail({required int id}) {
    return _client!.getStaffDetail(id: id);
  }

  @override
  Future<StaffCreateResponse> getStaffCreateInfomation() {
    return _client!.getStaffCreateInfomation();
  }

  @override
  Future<UpdateStaffResponse> updateStaff(
      {required UpdateStaffRequest request, required int id}) {
    return _client!.updateStaff(request: request, id: id);
  }

  @override
  Future<DeleteStaffResponse> deleteStaff({required int id}) {
    return _client!.deleteStaff(id: id);
  }

  @override
  Future<UpdateStaffResponse> addStaff({required CreateStaffRequest request}) {
    return _client!.addStaff(request: request);
  }

  @override
  Future<AffiliateUsersResponse> getAffiliateUsers() {
    return _client!.getAffiliateUsers();
  }

  @override
  Future<AffiliateReferralUsersResponse> getAffiliateReferralUsers() {
    return _client!.getAffiliateReferralUsers();
  }

  @override
  Future<AffiliatePaymentHistoryResponse> getAffiliatePaymentHistory(
      {required int id}) {
    return _client!.getAffiliatePaymentHistory(id: id);
  }

  @override
  Future<AffiliateBaseResponse> createPayment(
      {required CreatePaymentRequest request}) {
    return _client!.createPayment(request: request);
  }

  @override
  Future<AffiliateWithdrawRequestResponse> getAffiliateWithdrawRequest() {
    return _client!.getAffiliateWithdrawRequest();
  }

  @override
  Future<AffiliateBaseResponse> changeWithdrawRequestStatus(
      {required int requestId, required String type}) {
    return _client!
        .changeWithdrawRequestStatus(requestId: requestId, type: type);
  }

  @override
  Future<AddStockPurchaseResponse> addStockPurchases(
      {required AddStockPurchaseRequest request}) {
    return _client!.addStockPurchases(request: request);
  }

  @override
  Future<IntroductionResponse> getIntroduction() {
    return _client!.getIntroduction();
  }
}
