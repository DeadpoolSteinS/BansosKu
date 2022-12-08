import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const CustomButton2({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: MyColors.primaryGreen,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: MyColors.primaryBg,
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: const TextStyle(
            color: MyColors.primaryGreen,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
