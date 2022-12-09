import 'package:bansosku/common/custom_appbar.dart';
import 'package:bansosku/common/custom_button2.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/pages/bansos_diajukan/success_page_screen.dart';
import 'package:bansosku/pages/hasil_salurkan/components/list_hasil_salurkan.dart';
import 'package:flutter/material.dart';

class HasilSalurkanScreen extends StatefulWidget {
  static const String routeName = '/hasil-salurkan';
  final List<dynamic> data;

  const HasilSalurkanScreen({
    super.key,
    required this.data,
  });

  @override
  State<HasilSalurkanScreen> createState() => _HasilSalurkanScreenState();
}

class _HasilSalurkanScreenState extends State<HasilSalurkanScreen> {
  @override
  void initState() {
    super.initState();
    setTotalPacs();
  }

  int total = 0;

  void setTotalPacs() {
    for (int i = 0; i < widget.data[2].length; i++) {
      total += int.parse(widget.data[2][i].kuantitas);
    }
  }

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
                                        Expanded(
                                          child: ListView.builder(
                                            itemCount: widget.data[2].length,
                                            itemBuilder: (context, i) {
                                              return Column(
                                                children: [
                                                  ListHasilSalurkan(
                                                    leftTitle:
                                                        "${widget.data[2][i].jenis} ${widget.data[2][i].merk} ${widget.data[2][i].satuan}",
                                                    rightTitle:
                                                        "${widget.data[2][i].kuantitas} pcs",
                                                  ),
                                                  const SizedBox(height: 2),
                                                ],
                                              );
                                            },
                                          ),
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
                                          children: [
                                            const Text(
                                              "TOTAL",
                                              style: TextStyle(
                                                color: MyColors.primaryText,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              "$total pcs",
                                              style: const TextStyle(
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
                              height: 320,
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: MyColors.cardBg,
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
                                  Column(
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
                                      ListHasilSalurkan(
                                        leftTitle: "Provinsi",
                                        rightTitle: widget.data[1].provinsi,
                                      ),
                                      const SizedBox(height: 2),
                                      ListHasilSalurkan(
                                        leftTitle: "Kota/Kab",
                                        rightTitle: widget.data[1].kota,
                                      ),
                                      const SizedBox(height: 2),
                                      ListHasilSalurkan(
                                        leftTitle: "Kecamatan",
                                        rightTitle: widget.data[1].kecamatan,
                                      ),
                                      const SizedBox(height: 2),
                                      ListHasilSalurkan(
                                        leftTitle: "Desa/Kelurahan",
                                        rightTitle: widget.data[1].desa,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Column(
                                    children: [
                                      Container(
                                        height: 1,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 32,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 120,
                                              height: 90,
                                              decoration: const BoxDecoration(
                                                border: Border(
                                                  right: BorderSide(
                                                    color: MyColors.primaryText,
                                                  ),
                                                  bottom: BorderSide(
                                                    color: MyColors.primaryText,
                                                  ),
                                                ),
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    width: 70,
                                                    height: 70,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              35),
                                                      border: Border.all(
                                                        color: Colors.green,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        "13JT",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 4),
                                                  const Text(
                                                    "Total Warga Provinsi Jawa Barat",
                                                    style: TextStyle(
                                                      fontSize: 6,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 120,
                                              height: 90,
                                              decoration: const BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: MyColors.primaryText,
                                                  ),
                                                ),
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    width: 70,
                                                    height: 70,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              35),
                                                      border: Border.all(
                                                        color: Colors.yellow,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        "956RB",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 4),
                                                  const Text(
                                                    "Total Penerima Layak Provinsi\nJawa Barat",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 6,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 120,
                                              height: 110,
                                              padding: const EdgeInsets.only(
                                                top: 8,
                                              ),
                                              decoration: const BoxDecoration(
                                                border: Border(
                                                  right: BorderSide(
                                                    color: MyColors.primaryText,
                                                  ),
                                                ),
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    width: 70,
                                                    height: 70,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              35),
                                                      border: Border.all(
                                                        color: Colors.blue,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        "10JT",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 4),
                                                  const Text(
                                                    "Target Penerima",
                                                    style: TextStyle(
                                                      fontSize: 6,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 120,
                                              height: 110,
                                              padding: const EdgeInsets.only(
                                                top: 8,
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    width: 70,
                                                    height: 70,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              35),
                                                      border: Border.all(
                                                        color: Colors.red,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        "956RB",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 4),
                                                  const Text(
                                                    "Total Penerima Bantuan",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 6,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
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
