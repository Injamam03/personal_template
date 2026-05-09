import 'dart:io';

void main() {
  final screens = [
    {
      'path': 'lib/screens/baseScreen/authScreen/sign_in/sign_in_screen.dart',
      'class': 'SignInScreen',
    },
    {
      'path': 'lib/screens/baseScreen/authScreen/sign_up/sign_up_screen.dart',
      'class': 'SignUpScreen',
    },
    {
      'path': 'lib/screens/baseScreen/authScreen/forgotPasswordScreen/forgorPasswordScreen.dart',
      'class': 'ForgotPasswordScreen',
    },
    {
      'path': 'lib/screens/baseScreen/authScreen/forgotVerifyOtpScreen/forgotVeriyOtpScreen.dart',
      'class': 'ForgotVerifyOtpScreen',
    },
    {
      'path': 'lib/screens/baseScreen/authScreen/resetPasswordScreen/resetPasswordScreen.dart',
      'class': 'ResetPasswordScreen',
    },
    {
      'path': 'lib/screens/baseScreen/authScreen/signUpVerifyOtpScreen/SignUpOtpScreen.dart',
      'class': 'SignUpOtpScreen',
    },
    {
      'path': 'lib/screens/profileScreen/aboutUs/aboutUsScreen.dart',
      'class': 'AboutUsScreen',
    },
    {
      'path': 'lib/screens/profileScreen/changePassword/changePasswordScreen.dart',
      'class': 'ChangePasswordScreen',
    },
    {
      'path': 'lib/screens/profileScreen/contactSupport/contactSupportScreen.dart',
      'class': 'ContactSupportScreen',
    },
    {
      'path': 'lib/screens/profileScreen/editProfile/editProfileScreen.dart',
      'class': 'EditProfileScreen',
    },
    {
      'path': 'lib/screens/profileScreen/faq/faqScreen.dart',
      'class': 'FaqScreen',
    },
    {
      'path': 'lib/screens/profileScreen/language/languageScreen.dart',
      'class': 'LanguageScreen',
    },
    {
      'path': 'lib/screens/profileScreen/privacyPolicy/privacyPolicyScreen.dart',
      'class': 'PrivacyPolicyScreen',
    },
    {
      'path': 'lib/screens/profileScreen/termsAndconditions/termsAndconditionsScreen.dart',
      'class': 'TermsAndconditionsScreen',
    },
  ];

  final controllers = [
    {
      'path': 'lib/screens/baseScreen/authScreen/sign_in/controller/sign_in_controller.dart',
      'class': 'SignInController',
    },
    {
      'path': 'lib/screens/baseScreen/authScreen/sign_up/controller/sign_up_controller.dart',
      'class': 'SignUpController',
    },
    {
      'path': 'lib/screens/baseScreen/authScreen/forgotPasswordScreen/controller/forgotPasswordController.dart',
      'class': 'ForgotPasswordController',
    },
    {
      'path': 'lib/screens/baseScreen/authScreen/forgotVerifyOtpScreen/controller/forgotVeriyOtpController.dart',
      'class': 'ForgotVeriyOtpController',
    },
    {
      'path': 'lib/screens/baseScreen/authScreen/resetPasswordScreen/controller/resetPasswordController.dart',
      'class': 'ResetPasswordController',
    },
    {
      'path': 'lib/screens/baseScreen/authScreen/signUpVerifyOtpScreen/controller/signUpOtpController.dart',
      'class': 'SignUpOtpController',
    },
  ];

  for (var screen in screens) {
    File(screen['path']!).writeAsStringSync('''
import 'package:flutter/material.dart';

class ${screen['class']} extends StatelessWidget {
  const ${screen['class']}({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('${screen['class']}')),
      body: const Center(child: Text('${screen['class']}')),
    );
  }
}
''');
  }

  for (var controller in controllers) {
    // Ensure directory exists
    File(controller['path']!).parent.createSync(recursive: true);
    File(controller['path']!).writeAsStringSync('''
import 'package:get/get.dart';

class ${controller['class']} extends GetxController {
  
}
''');
  }

  print('Done creating stubs.');
}
