import 'package:flutter/material.dart';
import 'package:toonflix/color/custom_color.dart';
import 'package:toonflix/controller/custom_button_controller.dart';
import 'package:toonflix/widgets/card/wallet_card.dart';
import 'package:toonflix/widgets/text/custom_text.dart';

import 'widgets/button/custom_button.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final double sizedBoxHeight = 90.0;
  CustomButtonController customButtonController = CustomButtonController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(CustomColor.BACKGROUND_COLOR),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: sizedBoxHeight,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomText(
                          fontSize: 30.0,
                          color: Colors.white,
                          contents: 'Hey, Selena',
                        ),
                        CustomText(
                          contents: 'Welcome back!',
                          color: Colors.white,
                          opacity: 0.8,
                          fontSize: 22.0,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: sizedBoxHeight,
                ),
                CustomText(
                  contents: 'Total Balance',
                  color: Colors.white,
                  opacity: 0.8,
                  fontSize: 22.0,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomText(
                  contents: '\$5 194 482',
                  color: Colors.white,
                  fontSize: 48.0,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      color: const Color(CustomColor.TRANSFER_BUTTON_COLOR),
                      contents: 'Transfer',
                      fontSize: 22.0,
                      onTap: () {
                        customButtonController.transferTap();
                      },
                    ),
                    CustomButton(
                      color: const Color(CustomColor.CONTAINER_BUTTON_THEME_COLOR),
                      contents: 'Request',
                      fontSize: 22.0,
                      textColor: Colors.white,
                      onTap: () {
                        customButtonController.requestTap();
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: sizedBoxHeight,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomText(
                      contents: 'Wallets',
                      fontSize: 34,
                      color: Colors.white,
                    ),
                    CustomText(
                      contents: 'View All',
                      fontSize: 18,
                      opacity: 0.8,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                WalletCard(
                  h1: 'Euro',
                  c1: '6 428',
                  c2: 'EUR',
                  icon: Icons.euro_rounded,
                ),
                Transform.translate(
                  offset: const Offset(0,-40),
                  child: WalletCard(
                    h1: 'Dollar',
                    c1: '55 622',
                    c2: 'USD',
                    icon: Icons.monetization_on_outlined,
                    isEven: true,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0,-80),
                  child: WalletCard(
                    h1: 'Bitcoin',
                    c1: '9 785',
                    c2: 'BTC',
                    icon: Icons.currency_bitcoin_outlined,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
