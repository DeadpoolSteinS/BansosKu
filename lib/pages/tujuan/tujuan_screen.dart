import 'package:bansosku/common/custom_appbar.dart';
import 'package:bansosku/common/custom_button2.dart';
import 'package:bansosku/common/custom_textfield4.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/pages/alamat/alamat_screen.dart';
import 'package:flutter/material.dart';

class TujuanScreen extends StatelessWidget {
  static const String routeName = '/tujuan-bansos';
  const TujuanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppbar(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(32),
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/fluent.png"),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Tujuan Bansos",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 8),
                            const CustomTextfield4(
                              label: "Tujuan",
                              hint: "Masukkan tujuan pengiriman bantuan sosial",
                            ),
                            const SizedBox(height: 8),
                            const CustomTextfield4(
                              label: "Pesan",
                              hint:
                                  "Masukan pesan untuk penerima bantuan sosial",
                              maxLine: 5,
                            ),
                            const SizedBox(height: 8),
                            const CustomTextfield4(
                              label: "Tema",
                              hint: "Masukan tema penyaluran bantuan sosial",
                            ),
                            const SizedBox(height: 8),
                            const CustomTextfield4(
                              label: "Jargon",
                              hint: "Masukan jargon bantuan sosial",
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    CustomButton2(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          AlamatScreen.routeName,
                        );
                      },
                      child: const Text(
                        "Selanjutnya",
                        style: TextStyle(
                          color: MyColors.primaryGreen,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
