import 'package:get/get.dart';
import 'app_routes.dart';
import 'authBindings.dart';

// Import screens
import '../screens/baseScreen/splashScreen/splashScreen.dart';
import '../screens/baseScreen/authScreen/sign_in/sign_in_screen.dart';
import '../screens/baseScreen/authScreen/sign_up/sign_up_screen.dart';
import '../screens/baseScreen/authScreen/forgotPasswordScreen/forgorPasswordScreen.dart';
import '../screens/baseScreen/authScreen/forgotVerifyOtpScreen/forgotVeriyOtpScreen.dart';
import '../screens/baseScreen/authScreen/resetPasswordScreen/resetPasswordScreen.dart';
import '../screens/baseScreen/authScreen/signUpVerifyOtpScreen/SignUpOtpScreen.dart';

import '../screens/profileScreen/aboutUs/aboutUsScreen.dart';
import '../screens/profileScreen/changePassword/changePasswordScreen.dart';
import '../screens/profileScreen/contactSupport/contactSupportScreen.dart';
import '../screens/profileScreen/editProfile/editProfileScreen.dart';
import '../screens/profileScreen/faq/faqScreen.dart';
import '../screens/profileScreen/language/languageScreen.dart';
import '../screens/profileScreen/privacyPolicy/privacyPolicyScreen.dart';
import '../screens/profileScreen/termsAndconditions/termsAndconditionsScreen.dart';

class AppRoutesFile {
  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: AppRoutes.signInScreen,
      page: () => const SignInScreen(),
      binding: AuthBindings(),
    ),
    GetPage(
      name: AppRoutes.signUpScreen,
      page: () => const SignUpScreen(),
      binding: AuthBindings(),
    ),
    GetPage(
      name: AppRoutes.forgotPasswordScreen,
      page: () => const ForgotPasswordScreen(),
      binding: AuthBindings(),
    ),
    GetPage(
      name: AppRoutes.forgotVerifyOtpScreen,
      page: () => const ForgotVerifyOtpScreen(),
      binding: AuthBindings(),
    ),
    GetPage(
      name: AppRoutes.resetPasswordScreen,
      page: () => const ResetPasswordScreen(),
      binding: AuthBindings(),
    ),
    GetPage(
      name: AppRoutes.signUpOtpScreen,
      page: () => const SignUpOtpScreen(),
      binding: AuthBindings(),
    ),
    // Profile pages
    GetPage(name: AppRoutes.aboutUsScreen, page: () => const AboutUsScreen()),
    GetPage(name: AppRoutes.changePasswordScreen, page: () => const ChangePasswordScreen()),
    GetPage(name: AppRoutes.contactSupportScreen, page: () => const ContactSupportScreen()),
    GetPage(name: AppRoutes.editProfileScreen, page: () => const EditProfileScreen()),
    GetPage(name: AppRoutes.faqScreen, page: () => const FaqScreen()),
    GetPage(name: AppRoutes.languageScreen, page: () => const LanguageScreen()),
    GetPage(name: AppRoutes.privacyPolicyScreen, page: () => const PrivacyPolicyScreen()),
    GetPage(name: AppRoutes.termsAndConditionsScreen, page: () => const TermsAndconditionsScreen()),
  ];
}
