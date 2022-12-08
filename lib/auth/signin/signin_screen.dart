import 'package:bansosku/auth/signin/signup_screen.dart';
import 'package:bansosku/bottom_bar.dart';
import 'package:bansosku/common/custom_button.dart';
import 'package:bansosku/common/custom_textfield.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  static const String routeName = '/signin';
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 16,
            ),
            child: Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 2 - 300,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text(
                        'Masuk',
                        style: TextStyle(
                          color: MyColors.primaryGreen,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Selamat datang kembali',
                        style: TextStyle(
                          color: MyColors.primaryGreen,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 56),
                  Row(
                    children: [
                      CustomButton(
                        width:
                            (MediaQuery.of(context).size.width - 64) / 2 - 10,
                        onTap: () {},
                        child: const Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      CustomButton(
                        width:
                            (MediaQuery.of(context).size.width - 64) / 2 - 10,
                        bgColor: Colors.white,
                        onTap: () {},
                        child: const Text(
                          'No. Handphone',
                          style: TextStyle(
                            color: MyColors.primaryGreen,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const CustomTextfield(
                    label: "Email",
                    hint: "johndoe@bansosku.co.id",
                  ),
                  const SizedBox(height: 12),
                  const CustomTextfield(
                    label: "Password",
                    hint: "********",
                  ),
                  const SizedBox(height: 44),
                  CustomButton(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        BottomBar.routeName,
                        (route) => false,
                      );
                    },
                    child: const Text(
                      'Masuk',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Text(
                        "Belum punya akun?",
                        style: TextStyle(
                          color: MyColors.primaryGreen,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(width: 4),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            SignupScreen.routeName,
                          );
                        },
                        child: const Text(
                          "Daftar",
                          style: TextStyle(
                            color: MyColors.primaryGreen,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
