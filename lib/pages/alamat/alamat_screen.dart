import 'package:bansosku/common/custom_appbar.dart';
import 'package:bansosku/common/custom_button2.dart';
import 'package:bansosku/common/custom_textfield3.dart';
import 'package:bansosku/common/custom_textfield5.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/pages/detail_bansos/detail_bansos_screen.dart';
import 'package:flutter/material.dart';

class AlamatScreen extends StatelessWidget {
  static const String routeName = '/alamat-bansos';
  const AlamatScreen({super.key});

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
                                      image: AssetImage("assets/aim.png"),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Alamat Bansos",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 20),
                            const CustomTextfield3(
                              hint: "Provinsi",
                            ),
                            const SizedBox(height: 20),
                            const CustomTextfield3(
                              hint: "Kota/Kab",
                            ),
                            const SizedBox(height: 20),
                            const CustomTextfield3(
                              hint: "Kecamatan",
                            ),
                            const SizedBox(height: 20),
                            const CustomTextfield3(
                              hint: "Desa/Kelurahan",
                            ),
                            const SizedBox(height: 20),
                            const CustomTextfield5(
                              label: "Kuantitas jumlah Bansos",
                              hint: "Masukan jumlah bantuan yang diberikan",
                            ),
                            const SizedBox(height: 20),
                            const CustomTextfield5(
                              label: "Tingkat Wilayah",
                              hint:
                                  "Provinsi / Kota/Kab / Kecamatan / Desa/Kelurahan",
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomButton2(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          DetailBansosScreen.routeName,
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
