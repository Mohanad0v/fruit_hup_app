import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/features/splash/presentation/views/splash_view.dart';

import '../../features/auth/presentation/views/signin_view.dart';
import '../../features/auth/presentation/views/signup_view.dart';
import '../../features/on_boarding/presentation/views/on_boarding_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (contxt) => const SplashView());
    case SigninView.routeName:
      return MaterialPageRoute(builder: (contxt) => const SigninView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (contxt) => const SignupView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (contxt) => const OnBoardingView());
    default:
      return MaterialPageRoute(builder: (contxt) => const Scaffold());
  }
}
