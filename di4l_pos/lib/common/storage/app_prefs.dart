import 'dart:convert';

import 'package:di4l_pos/common/global_constants.dart';
import 'package:di4l_pos/common/storage/base_prefs.dart';
import 'package:di4l_pos/models/user/response/token_response.dart';
import 'package:di4l_pos/models/user/response/user_response.dart';
import 'package:di4l_pos/models/business_location/response/business_location.dart';

class AppPref extends BasePrefs {
  /// MARK: - Initials;
  static Future<AppPref> instance() async {
    final appPref = AppPref();
    await appPref.init();
    return appPref;
  }

  /// Save Token
  Future<void> saveToken({required String tokenJson}) async {
    await setValueForKey(GlobalConstants.kToken, tokenJson);
  }

  /// Get Token
  Future<TokenResponse?>? getToken() async {
    final tokenJson = getValueForKey<String?>(GlobalConstants.kToken);
    if (tokenJson?.isEmpty ?? true) {
      return Future.value(null);
    }
    final tokenResponse = TokenResponse.fromRawJson(tokenJson ?? '');
    return Future.value(tokenResponse);
  }

  /// Save Business
  Future<void> saveBusiness({required String business}) async {
    await setValueForKey(GlobalConstants.kBusiness, business);
  }

  /// Get Business
  Future<BusinessLocation?>? getBusiness() async {
    final businessJson = getValueForKey<String?>(GlobalConstants.kBusiness);
    if (businessJson?.isEmpty ?? true) {
      return Future.value(null);
    }
    final businessResponse = BusinessLocation.fromRawJson(businessJson ?? '');
    return Future.value(businessResponse);
  }

  /// Save User
  Future<void> saveUser({required String userJson}) async {
    await setValueForKey(GlobalConstants.kUser, userJson);
  }

  /// Get User
  Future<UserResponse?>? getUser() async {
    final userJson = getValueForKey<String?>(GlobalConstants.kUser);
    if (userJson?.isEmpty ?? true) {
      return Future.value(null);
    }
    final userResponse = UserResponse.fromRawJson(userJson ?? '');
    return Future.value(userResponse);
  }

  /// Save User
  Future<void> saveSkipOnboard({required bool isSkip}) async {
    await setValueForKey(GlobalConstants.kSkipOnboard, isSkip);
  }

  /// Get User
  Future<bool> isSkipOnboard() async {
    final isSkip = getValueForKey<bool?>(GlobalConstants.kSkipOnboard) ?? false;
    return isSkip;
  }

  /// Has Logged In
  Future<bool> hasLoggedIn() async {
    final userResponse = await getUser();
    return userResponse != null;
  }

  /// Chaned Account
  Future<void> changedAccount() async {
    await remove(key: GlobalConstants.kUser);
  }

  /// Logout
  Future<void> logout() async {
    await remove(key: GlobalConstants.kToken);
    await remove(key: GlobalConstants.kUser);
    await remove(key: GlobalConstants.kBusiness);
  }

  /// Language
  Future<String?> getLanguage() async {
    final language = getValueForKey<String?>(GlobalConstants.kLanguage);
    return language;
  }

  /// Language
  Future<void> savelanguage({required String languageCode}) async {
    await setValueForKey(GlobalConstants.kLanguage, languageCode);
  }

  /// Font family
  Future<String?> getFont() async {
    final font = getValueForKey<String?>(GlobalConstants.FONTFAMILY);
    return font;
  }

  /// Font family
  Future<void> setFont({required String font}) async {
    await setValueForKey(GlobalConstants.FONTFAMILY, font);
  }

  /// Font family
  Future<void> setMenuData({required String menu}) async {
    await setValueForKey(GlobalConstants.MENUDATA, menu);
  }

  /// Font family
  Future<String?> getMenuData() async {
    final data = getValueForKey<String?>(GlobalConstants.MENUDATA);
    return data ?? '';
  }

  Future<void> saveTable({required String table}) async {
    await setValueForKey(GlobalConstants.kTable, table);
  }

  Future<String?> getTable() async {
    final table = getValueForKey<String?>(GlobalConstants.kTable);
    return table;
  }

  Future<void> removeTable() async {
    await remove(key: GlobalConstants.kTable);
  }

  Future<void> saveNote({required String note}) async {
    await setValueForKey(GlobalConstants.kNote, note);
  }

  Future<String?> getNote() async {
    final note = getValueForKey<String?>(GlobalConstants.kNote);
    return note;
  }

  Future<void> removeNote() async {
    await remove(key: GlobalConstants.kNote);
  }

  Future<void> saveCart({required String cartLines}) async {
    await setValueForKey(GlobalConstants.kCart, cartLines);
  }

  Future<String?> getCart() async {
    final cart = getValueForKey<String?>(GlobalConstants.kCart);
    return cart;
  }

  Future<void> removeCart() async {
    await remove(key: GlobalConstants.kCart);
  }

  Future<void> saveLoginInput({required String username, required String password}) async {
    await setValueForKey(GlobalConstants.USERNAME, username);
    await setValueForKey(GlobalConstants.PASSWORD, password);
  }

  Future<String> getUsernameInput() async {
    return await getValueForKey(GlobalConstants.USERNAME) ?? '';
  }

  Future<String> getPasswordInput() async {
    return await getValueForKey(GlobalConstants.PASSWORD) ?? '';
  }

  Future<void> saveStaffList({required Map<String, dynamic> staffList}) async {
    await setValueForKey(GlobalConstants.STAFFLIST, jsonEncode(staffList));
  }

  Future<Map<String, dynamic>> getStaffList() async {
    return await jsonDecode(getValueForKey(GlobalConstants.STAFFLIST)) ?? {};
  }
}
