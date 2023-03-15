import 'package:get/get.dart';
import 'package:shelter/auth/sign_in.dart';
import 'package:shelter/auth/sign_up.dart';
import 'package:shelter/bottom_nav_controller/bottom_nav_controller.dart';
import 'package:shelter/views/Drawer/faq.dart';
import 'package:shelter/views/Drawer/how_to_use.dart';
import 'package:shelter/views/Drawer/privacy.dart';
import 'package:shelter/views/Drawer/settings.dart';
import 'package:shelter/views/Drawer/support.dart';
import 'package:shelter/views/main_home_screen.dart';
import 'package:shelter/views/onboarding_screen.dart';
import 'package:shelter/views/privacy_policy.dart';
import 'package:shelter/views/splash_screen.dart';
import 'package:shelter/views/user_from.dart';

const String splash = '/splash-screen';
const String onboarding = '/onboarding-screen';
const String signUp = '/sign-up-screen';
const String signIn = '/sign-in-screen';
const String userFrom = '/user-from-screen';
const String privacyPolicy = '/privacy-policy-screen';
const String mainHomeScreen = '/main-home-screen';

const String support = '/support-screen';
const String privacy = '/privacy-screen';
const String faq = '/faq-screen';
const String howToUse = '/how-to-use-screen';
const String settings = '/settings-screen';

// Control our page route
List<GetPage> getpages = [
  GetPage(name: splash, page: () => SplashScreen()),
  GetPage(name: onboarding, page: () => OnboardingScreen()),
  GetPage(name: signUp, page: () => SignUp()),
  GetPage(name: signIn, page: () => SignIn()),
  GetPage(name: userFrom, page: () => UserFrom()),
  GetPage(name: privacyPolicy, page: () => PrivacyPolicy()),
  GetPage(name: mainHomeScreen, page: () => MainHomeScreen()),
  GetPage(name: support, page: () => Support()),
  GetPage(name: privacy, page: () => Privacy()),
  GetPage(name: faq, page: () => Faq()),
  GetPage(name: howToUse, page: () => HowToUse()),
  GetPage(name: settings, page: () => Settings()),
];
