import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/models/affiliate_marketing/request/create_payment_request.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_referral_users_response.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_users_response.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_payment_history_response.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_withdraw_request_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:get/get.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/repositories/data_repository.dart';

part 'affiliate_marketing_cubit.freezed.dart';
part 'affiliate_marketing_state.dart';

class AffiliateMarketingCubit extends Cubit<AffiliateMarketingState> {
  final _dataRepository = getIt<DataRepository>();

  AffiliateMarketingCubit() : super(const AffiliateMarketingState.initial(data: AffiliateMarketingStateData()));

  // Get affiliate users
  Future<void> getAffiliateUsers() async {
    try {
      emit(AffiliateMarketingState.status(data: state.data!.copyWith(status: StatusType.loading)));
      final affiliateUsersResponse = await _dataRepository.getAffiliateUsers();

      emit(AffiliateMarketingState.getAffiliateUsers(
          data: state.data!.copyWith(
        status: StatusType.loaded,
        affiliateUsers: affiliateUsersResponse.data ?? [],
        affiliateUsersOriginal: affiliateUsersResponse.data ?? [],
      )));
      
    } catch (error) {
      print(error);
      emit(AffiliateMarketingState.status(data: state.data!.copyWith(status: StatusType.error)));

      Helpers.handleErrorApp(error: error);
    } finally {

    }
  }

  // Get affiliate referral users
  Future<void> getAffiliateReferralUsers() async {
    try {
      emit(AffiliateMarketingState.status(data: state.data!.copyWith(referralUsersStatus: StatusType.loading)));
      final affiliateReferralUsersResponse = await _dataRepository.getAffiliateReferralUsers();

      emit(AffiliateMarketingState.getAffiliateReferralUsers(
          data: state.data!.copyWith(
        referralUsersStatus: StatusType.loaded,
        affiliateReferralUsers: affiliateReferralUsersResponse.data ?? [],
        affiliateReferralUsersOriginal: affiliateReferralUsersResponse.data ?? [],
      )));
      
    } catch (error) {
      print(error);
      emit(AffiliateMarketingState.status(data: state.data!.copyWith(referralUsersStatus: StatusType.error)));

      Helpers.handleErrorApp(error: error);
    } finally {

    }
  }

  // Get affiliate withdraw request
  Future<void> getAffiliateWithdrawRequest() async {
    try {
      emit(AffiliateMarketingState.status(data: state.data!.copyWith(withdrawRequestsStatus: StatusType.loading)));
      final affiliateWithdrawRequestResponse = await _dataRepository.getAffiliateWithdrawRequest();

      emit(AffiliateMarketingState.getAffiliateWithdrawRequest(
          data: state.data!.copyWith(
        withdrawRequestsStatus: StatusType.loaded,
        affiliatewithdrawRequests: affiliateWithdrawRequestResponse.data ?? [],
        affiliatewithdrawRequestsOriginal: affiliateWithdrawRequestResponse.data ?? [],
      )));
      
    } catch (error) {
      print(error);
      emit(AffiliateMarketingState.status(data: state.data!.copyWith(withdrawRequestsStatus: StatusType.error)));

      Helpers.handleErrorApp(error: error);
    } finally {

    }
  }

  // Get affiliate payments
  Future<void> getAffiliatePaymentHistory({required int id}) async {
    try {
      emit(AffiliateMarketingState.status(data: state.data!.copyWith(status: StatusType.loading)));
      final affiliatePaymentsResponse = await _dataRepository.getAffiliatePaymentHistory(id: id);

      emit(AffiliateMarketingState.getAffiliatePayments(
          data: state.data!.copyWith(
        status: StatusType.loaded,
        affiliatePayments: affiliatePaymentsResponse.data ?? [],
        affiliatePaymentsOriginal: affiliatePaymentsResponse.data ?? [],
      )));
      
    } catch (error) {
      print(error);
      emit(AffiliateMarketingState.status(data: state.data!.copyWith(status: StatusType.error)));

      Helpers.handleErrorApp(error: error);
    } finally {

    }
  }

  // Create payment
  Future<void> createPayment({required AffiliateUser user , required String amount}) async {
    try {
      emit(AffiliateMarketingState.status(data: state.data!.copyWith(status: StatusType.loading)));

      final request = CreatePaymentRequest(userId: user.id!.toString(), amount: amount);
      final affiliatePaymentResponse = await _dataRepository.createPayment(request: request);
      final affiliateUsersResponse = await _dataRepository.getAffiliateUsers();

      user = affiliateUsersResponse.data!.firstWhere((e) => e.id == user.id);

      emit(AffiliateMarketingState.getAffiliatePayments(data: state.data!.copyWith(status: StatusType.loaded)));

      UIHelpers.showCustomDialog(
        context: Get.context!,
        title: 'payment'.tr,
        message: affiliatePaymentResponse.success == 1 ? 'payment_successfully'.tr : 'payment_fail'.tr,
        isShowClose: false,
        isShowConfirm: true,
        titleConfirm: 'close'.tr,
        onComfirm:(){
          navigator!.popUntil((route) => route.settings.name == RouteGenerator.affiliateMarketingScreen);
          navigator!.popAndPushNamed(
            RouteGenerator.affiliateMarketingScreen,
          );
          navigator!.pushNamed(
            RouteGenerator.affiliateUserDetailScreen,
            arguments: {
              'user': user
            },
          );
        }
      );

    } catch (error) {
      print(error);
      emit(AffiliateMarketingState.status(data: state.data!.copyWith(status: StatusType.error)));

      Helpers.handleErrorApp(error: error);
    } finally {

    }
  }

  // Change withdraw request status
  Future<void> changeWithdrawRequestStatus({required int requestId , required String type}) async {
    try {
      UIHelpers.showLoading();
      final changeWithdrawRequestStatusResponse = await _dataRepository.changeWithdrawRequestStatus(requestId: requestId, type: type);
      UIHelpers.dismissLoading();

      UIHelpers.showCustomDialog(
        context: Get.context!,
        title: type.tr,
        message: changeWithdrawRequestStatusResponse.success == 1 ? 'change_withdraw_request_status_successfully'.tr : 'change_withdraw_request_status_fail'.tr,
        isShowClose: false,
        isShowConfirm: true,
        titleConfirm: 'close'.tr,
        onComfirm:(){
          navigator!.pop();
          navigator!.popAndPushNamed(
            RouteGenerator.affiliateMarketingScreen,
            arguments: {
              'tabIndex': 2
            },
          );
        }
      );

    } catch (error) {
      print(error);
      Helpers.handleErrorApp(error: error);
    } finally {

    }
  }
}