import 'package:di4l_pos/models/user/response/user_response.dart';
import 'package:get/get.dart';

class GlobalObs {
  static var firstName = ''.obs;
  static var lastName = ''.obs;
  static var email = ''.obs;

  static void updateUserInfo({required User user}) {
    firstName.value = user.firstName ?? '';
    lastName.value = user.lastName ?? '';
    email.value = user.email ?? '';
  }
}
