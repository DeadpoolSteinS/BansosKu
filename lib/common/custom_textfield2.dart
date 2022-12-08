import 'package:bansosku/common/custom_textfield3.dart';
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
        const SizedBox(height: 8),
        CustomTextfield3(
          hint: hint,
        ),
      ],
    );
  }
}
