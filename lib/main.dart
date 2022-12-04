import 'package:bansosku/bottom_bar.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BansosKu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: MyColors.primaryBg,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: MyColors.primaryText,
            ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const BottomBar(),
    );
  }
}
