import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String label;
  final String hint;

  const CustomTextfield({
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
            color: MyColors.primaryGreen,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                // offset: Offset(0, 8),
              )
            ],
          ),
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              filled: true,
              fillColor: Colors.white,
              hintText: hint,
              hintStyle: const TextStyle(
                color: Color(0xffC4C4C4),
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
