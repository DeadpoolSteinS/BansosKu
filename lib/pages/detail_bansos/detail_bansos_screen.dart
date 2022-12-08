import 'package:bansosku/common/custom_appbar.dart';
import 'package:bansosku/common/custom_button2.dart';
import 'package:bansosku/common/custom_textfield3.dart';
import 'package:flutter/material.dart';

class DetailBansosScreen extends StatelessWidget {
  static const String routeName = '/detail-bansos';
  const DetailBansosScreen({super.key});

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
                                      image:
                                          AssetImage("assets/list_detail.png"),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  "Detail Bantuan Sosial",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const CustomTextfield3(
                              hint: "Jenis",
                            ),
                            const SizedBox(height: 20),
                            const CustomTextfield3(
                              hint: "Merk",
                            ),
                            const SizedBox(height: 20),
                            const CustomTextfield3(
                              hint: "Satuan",
                            ),
                            const SizedBox(height: 20),
                            const CustomTextfield3(
                              hint: "Kuantitas",
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomButton2(
                      text: "Selanjutnya",
                      onTap: () {},
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
