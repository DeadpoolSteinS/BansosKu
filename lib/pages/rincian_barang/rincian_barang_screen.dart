import 'package:bansosku/common/custom_appbar.dart';
import 'package:bansosku/common/custom_button.dart';
import 'package:bansosku/common/custom_textfield_empty.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/pages/success/semoga_bermanfaat.dart';
import 'package:flutter/material.dart';

class RincianBarangScreen extends StatelessWidget {
  static const String routeName = '/criteria';
  const RincianBarangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double cardWidth = (MediaQuery.of(context).size.width - 128) / 3;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 265,
                    padding: const EdgeInsets.all(32),
                    decoration: const BoxDecoration(
                      color: MyColors.primaryGreen,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        )
                      ],
                    ),
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                              top: 32,
                              right: 32,
                              bottom: 16,
                              left: 32,
                            ),
                            child: Column(
                              children: [
                                const SizedBox(height: 12),
                                Container(
                                  width: double.infinity,
                                  height: cardWidth + 45,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: MyColors.primaryBg,
                                    borderRadius: BorderRadius.circular(9),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 4,
                                        offset: Offset(0, 4),
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 25,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("assets/BansosKu_white 1.png"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: cardWidth - 20,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 16,
                                          vertical: 20,
                                        ),
                                        decoration: BoxDecoration(
                                          color: MyColors.primaryGreen,
                                          borderRadius: BorderRadius.circular(9),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black26,
                                              blurRadius: 4,
                                              offset: Offset(0, 4),
                                            )
                                          ],
                                        ),
                                        child: Column(
                                          children: [
                                            const Text("Kemakom",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                            const Text("1 paket sembako untuk wahyu",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        )
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Rincian Barang", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Container(
                      width: cardWidth * 3,
                      height: cardWidth - 20,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        color: MyColors.primaryGreen,
                        borderRadius: BorderRadius.circular(9),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Beras",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          const Text("Rojo lele 5 Kg",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )
                  ),
                  SizedBox(height: 10,),
                  Container(
                      width: cardWidth * 3,
                      height: cardWidth - 20,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        color: MyColors.primaryGreen,
                        borderRadius: BorderRadius.circular(9),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Beras",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          const Text("Rojo lele 5 Kg",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )
                  ),
                  SizedBox(height: 10,),
                  Container(
                      width: cardWidth * 3,
                      height: cardWidth - 20,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        color: MyColors.primaryGreen,
                        borderRadius: BorderRadius.circular(9),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Beras",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          const Text("Rojo lele 5 Kg",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )
                  ),
                  SizedBox(height: 20,),
                  Text("Kelengkapan Barang", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Container(
                      width: cardWidth * 3,
                      height: cardWidth - 20,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(color: MyColors.primaryGreen),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const Text("Beras",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              const Text("Rojo lele 5 Kg",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 25,),
                          Column(
                            children: [
                              const Text("Beras",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              const Text("Rojo lele 5 Kg",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                  ),
                  SizedBox(height: 20,),
                  CustomButton(child: Text("Selesai"), onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SemogaBermanfaat()),
                    );
                  }, width: cardWidth * 3,
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
