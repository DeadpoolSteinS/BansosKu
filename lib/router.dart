import 'package:bansosku/auth/signin/signin_screen.dart';
import 'package:bansosku/auth/signin/signup_screen.dart';
import 'package:bansosku/bottom_bar.dart';
import 'package:bansosku/pages/ajukan_bansos_form/ajukan_bansos_form_screen.dart';
import 'package:bansosku/pages/alamat/alamat_screen.dart';
import 'package:bansosku/pages/bansos_diajukan/success_page_screen.dart';
import 'package:bansosku/pages/detail_bansos/detail_bansos_screen.dart';
import 'package:bansosku/pages/hasil_data/hasil_data_screen.dart';
import 'package:bansosku/pages/hasil_salurkan/hasil_salurkan_screen.dart';
import 'package:bansosku/pages/informasi_detail/informasi_detail_screen.dart';
import 'package:bansosku/pages/notifikasi/notifikasi_screen.dart';
import 'package:bansosku/pages/tujuan/tujuan_screen.dart';
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
    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomBar(),
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
    case TujuanScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const TujuanScreen(),
      );
    case AlamatScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AlamatScreen(),
      );
    case DetailBansosScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const DetailBansosScreen(),
      );
    case AjukanBansosFormScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AjukanBansosFormScreen(),
      );
    case HasilDataScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HasilDataScreen(),
      );
    case SuccessPageScreen.routeName:
      List<String> params = routeSettings.arguments as List<String>;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SuccessPageScreen(
          text: params[0],
          subtext: params[1],
        ),
      );
    case HasilSalurkanScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HasilSalurkanScreen(),
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
