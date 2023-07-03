import 'package:get/get.dart';
import 'package:journey/modules/features/onboarding/view/onboarding_view.dart';

import '../../modules/features/login/view/login_view.dart';
import '../../modules/features/register/view/register_view.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/login', page: () => const LoginView()),
    GetPage(name: '/onboarding', page: () =>const OnboardingView()),
        GetPage(name: '/register', page: () =>const RegisterView())

  ];
}
