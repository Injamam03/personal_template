import 'package:get/get.dart';
import '../screens/baseScreen/authScreen/sign_in/controller/sign_in_controller.dart';
import '../screens/baseScreen/authScreen/sign_up/controller/sign_up_controller.dart';
import '../screens/baseScreen/authScreen/forgotPasswordScreen/controller/forgotPasswordController.dart';
import '../screens/baseScreen/authScreen/forgotVerifyOtpScreen/controller/forgotVeriyOtpController.dart';
import '../screens/baseScreen/authScreen/resetPasswordScreen/controller/resetPasswordController.dart';
import '../screens/baseScreen/authScreen/signUpVerifyOtpScreen/controller/signUpOtpController.dart';

class AuthBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
    Get.lazyPut<SignUpController>(() => SignUpController());
    Get.lazyPut<ForgotPasswordController>(() => ForgotPasswordController());
    Get.lazyPut<ForgotVeriyOtpController>(() => ForgotVeriyOtpController());
    Get.lazyPut<ResetPasswordController>(() => ResetPasswordController());
    Get.lazyPut<SignUpOtpController>(() => SignUpOtpController());
  }
}
