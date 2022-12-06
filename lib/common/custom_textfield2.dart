import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class CustomTextfield2 extends StatelessWidget {
  final String label;
  final String hint;

  const CustomTextfield2({
    super.key,
    required this.label,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: MyColors.secondaryText),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              filled: true,
              fillColor: MyColors.primaryBg,
              hintText: hint,
              hintStyle: const TextStyle(
                color: Color(0xb3292929),
                fontWeight: FontWeight.w300,
                fontSize: 10,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            validator: (val) {
              if (val == null || val.isEmpty) {
                return 'Enter your email';
              }
              return null;
            },
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
