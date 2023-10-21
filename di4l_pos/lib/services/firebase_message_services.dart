import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirebaseMessageServices {
  /// MARK: - Initials;
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> requestPermission() async {
    await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      provisional: false,
      sound: true,
    );
    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
        alert: true, sound: true);
  }

  Future<String?> getFcmToken() async {
    return _firebaseMessaging.getToken();
  }
}
