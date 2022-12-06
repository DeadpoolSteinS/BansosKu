import 'package:bansosku/auth/signin/signin_screen.dart';
import 'package:bansosku/auth/signin/signup_screen.dart';
import 'package:bansosku/pages/informasi_detail/informasi_detail_screen.dart';
import 'package:bansosku/pages/notifikasi/notifikasi_screen.dart';
import 'package:bansosku/pages/salurkan/salurkan_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case SigninScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SigninScreen(),
      );
    case SignupScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SignupScreen(),
      );
    case NotifikasiScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const NotifikasiScreen(),
      );
    case InformasiDetailScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const InformasiDetailScreen(),
      );
    case SalurkanScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SalurkanScreen(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
