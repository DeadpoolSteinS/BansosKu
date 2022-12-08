import 'package:bansosku/common/custom_appbar.dart';
import 'package:bansosku/common/custom_button2.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/pages/bansos_diajukan/success_page_screen.dart';
import 'package:bansosku/pages/hasil_salurkan/components/list_hasil_salurkan.dart';
import 'package:flutter/material.dart';

class HasilSalurkanScreen extends StatelessWidget {
  static const String routeName = '/hasil-salurkan';
  const HasilSalurkanScreen({super.key});

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
                            Container(
                              height: 180,
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: MyColors.cardBg,
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 18,
                                              height: 18,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/list_detail.png'),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 4),
                                            const Text(
                                              "Detail Bantuan Sosial",
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 12),
                                        const ListHasilSalurkan(
                                          leftTitle: "Beras Rojolele 5kg",
                                          rightTitle: "13RB pcs",
                                        ),
                                        const SizedBox(height: 2),
                                        const ListHasilSalurkan(
                                          leftTitle:
                                              "Minyak Kelapa Sawit Filma 1ltr",
                                          rightTitle: "13RB pcs",
                                        ),
                                        const SizedBox(height: 2),
                                        const ListHasilSalurkan(
                                          leftTitle: "Gula Pasir",
                                          rightTitle: "13RB pcs",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 1,
                                        color: Colors.black,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 4,
                                          vertical: 8,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            Text(
                                              "TOTAL",
                                              style: TextStyle(
                                                color: MyColors.primaryText,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              "39rb pcs",
                                              style: TextStyle(
                                                color: MyColors.primaryText,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 24),
                            Container(
                              height: 120,
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: MyColors.cardBg,
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 18,
                                              height: 18,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/aim.png'),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 4),
                                            const Text(
                                              "Alamat Bansos",
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 12),
                                        const ListHasilSalurkan(
                                          leftTitle: "Provinsi",
                                          rightTitle: "Jawa Barat",
                                        ),
                                        const SizedBox(height: 2),
                                        const ListHasilSalurkan(
                                          leftTitle: "Kota/Kab",
                                          rightTitle: "Bandung",
                                        ),
                                        const SizedBox(height: 2),
                                        const ListHasilSalurkan(
                                          leftTitle: "Kecamatan",
                                          rightTitle: "Sukasari",
                                        ),
                                        const SizedBox(height: 2),
                                        const ListHasilSalurkan(
                                          leftTitle: "Desa/Kelurahan",
                                          rightTitle: "Isola",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 1,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomButton2(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          SuccessPageScreen.routeName,
                          arguments: [
                            'Ajuan Penyaluran Dikirim',
                            'Kami akan memberikan notifikasi tambahan jika ajuan mu di terima, terimakasih orang baik :)',
                          ],
                        );
                      },
                      child: const Text(
                        "Ajukan",
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
