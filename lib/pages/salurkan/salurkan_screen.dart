import 'package:bansosku/common/custom_appbar.dart';
import 'package:bansosku/common/custom_button.dart';
import 'package:bansosku/common/custom_textfield2.dart';
import 'package:flutter/material.dart';

class SalurkanScreen extends StatelessWidget {
  static const String routeName = '/salurkan-bantuanmu';
  const SalurkanScreen({super.key});

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
                          const CustomTextfield2(
                            label: "Tujuan",
                            hint: "Masukkan tujuan pengiriman bantuan sosial",
                          ),
                          const SizedBox(height: 8),
                          const CustomTextfield2(
                            label: "Pesan",
                            hint: "Masukan pesan untuk penerima bantuan sosial",
                          ),
                          const SizedBox(height: 8),
                          const CustomTextfield2(
                            label: "Tema",
                            hint: "Masukan tema penyaluran bantuan sosial",
                          ),
                          const SizedBox(height: 8),
                          const CustomTextfield2(
                            label: "Jargon",
                            hint: "Masukan jargon bantuan sosial",
                          ),
                        ],
                      ),
                    ),
                    const CustomButton(text: "Selanjutnya"),
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
