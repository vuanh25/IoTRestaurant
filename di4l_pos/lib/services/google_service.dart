import 'dart:async';

import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:get/get.dart';
import 'package:flutter/src/foundation/print.dart';

@lazySingleton
class GoogleService {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['email'],
  );

  /// Handle Login
  FutureOr<GoogleSignInAccount?> handleLogin() async {
    try {
      return _googleSignIn.signIn();
    } catch (error) {
      debugPrint('Login Google Error: $error');
      UIHelpers.showSnackBar(
          message: 'something_went_wrong'.tr, type: SnackBarType.ERROR);
    }
    return null;
  }

  Future<void> handleLogout() => _googleSignIn.disconnect();
}
