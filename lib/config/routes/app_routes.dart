import 'package:flutter/material.dart';
import 'package:pos/features/auth/presentation/pages/login_page.dart';
import 'package:pos/features/auth/presentation/pages/otp_page.dart';
import 'package:pos/features/home/presentation/pages/home_page.dart';
import 'package:pos/features/product/presentation/pages/new_product_page.dart';

import '../../features/auth/presentation/pages/user_info_page.dart';
import '../../features/product/presentation/pages/product_page.dart';

class Routes {
  static const String initialRoutes = '/';
  static const String otpPageRoutes = '/otp';
  static const String userInfoRoutes = '/userInfo';
  static const String homeRoutes = '/home';
  static const String productRoutes = '/product';
  static const String addNewProductRoutes = '/addNewProduct';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoutes:
        return MaterialPageRoute(builder: (context) => LoginPage());
        break;
      case Routes.otpPageRoutes:
        return MaterialPageRoute(builder: (context) => OtpVerificationPage());
        break;
      case Routes.userInfoRoutes:
        return MaterialPageRoute(builder: (context) => UserInformationPage());
        break;
      case Routes.homeRoutes:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case Routes.productRoutes:
        return MaterialPageRoute(builder: (context) => const ProductPage());
        break;
      case Routes.addNewProductRoutes:
        return MaterialPageRoute(builder: (context) => AddNewProduct());
        break;
    }
    return null;
  }
}
