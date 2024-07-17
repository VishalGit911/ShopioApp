import 'package:flutter/material.dart';
import 'package:shoppio_app/screen/category/add_category/add_category_screen.dart';
import 'package:shoppio_app/screen/category/list_category/list_category_screen.dart';
import 'package:shoppio_app/screen/forget/forgate_screen.dart';
import 'package:shoppio_app/screen/product/add_product/add_product_screen.dart';
import 'package:shoppio_app/screen/product/list_product/list_product_screen.dart';

import '../screen/home/home_screen.dart';
import '../screen/onboarding/onboarding_screen.dart';
import '../screen/signin/signin_screen.dart';
import '../screen/signup/signup_screen.dart';
import '../screen/splash/splash_screen.dart';

class AppRoute {
  static const splash = "/splase_screen";
  static const onboarding = "/onboarding_screen";
  static const signin = "/signin";
  static const signup = "/signup";
  static const home = "/home";
  static const forgate = "/forgate";
  static const listproduct = "/listproduct";
  static const addproduct = "/addproduct";
  static const listcatagory = "/listcatagory";
  static const addcategory = "/addcategory";

  static Route<dynamic>? onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case splash:
        return MaterialPageRoute(
          builder: (context) => const SplaseScreen(),
        );

      case onboarding:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      case signin:
        return MaterialPageRoute(
          builder: (context) => const SigniScreen(),
        );
      case signup:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );
      case home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case forgate:
        return MaterialPageRoute(
          builder: (context) => const ForgateScreen(),
        );
      case addproduct:
        return MaterialPageRoute(
          builder: (context) => const AddProductScreen(),
        );
      case listproduct:
        return MaterialPageRoute(
          builder: (context) => const ListProductScreen(),
        );
      case listcatagory:
        return MaterialPageRoute(
          builder: (context) => const ListCategoryScreen(),
        );
      case addcategory:
        return MaterialPageRoute(
          builder: (context) => const AddCategoryScreen(),
        );
    }
    return null;
  }
}
