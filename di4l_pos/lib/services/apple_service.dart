import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

@lazySingleton
class AppleService {
  /// Apple Login
  FutureOr<AuthorizationCredentialAppleID> handleAppleLogin() async {
    return SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );
  }
}
