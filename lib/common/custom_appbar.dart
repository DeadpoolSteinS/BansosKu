import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: MyColors.primaryGreen,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 4,
      ),
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 30,
              height: 30,
              margin: const EdgeInsets.only(top: 8),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/back.png"),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 114,
              height: 42,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/BansosKu.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
