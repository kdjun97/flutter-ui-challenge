import 'package:flutter/material.dart';
import 'package:toonflix/color/custom_color.dart';
import 'package:toonflix/widgets/text/custom_text.dart';

class WalletCard extends StatelessWidget {
  WalletCard({
    required this.h1,
    required this.c1,
    required this.c2,
    this.isEven = false,
    required this.icon,
  });

  final String h1;
  final String c1;
  final String c2;
  final bool isEven;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isEven
            ? Colors.white
            : const Color(CustomColor.CONTAINER_BUTTON_THEME_COLOR),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 15, 10, 10),
            child: CustomText(
              contents: h1,
              color: isEven ? Colors.black : Colors.white,
              fontSize: 35.0,
              isBold: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 0, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomText(
                      contents: c1,
                      color: isEven ? Colors.black : Colors.white,
                      fontSize: 23.0,
                      isBold: false,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomText(
                      contents: c2,
                      color: isEven ? Colors.black : Colors.white,
                      opacity: 0.8,
                      fontSize: 18.0,
                      isBold: false,
                    ),
                  ],
                ),
                Transform.scale(
                  scale: 2.0,
                  child: Transform.translate(
                    offset: const Offset(-7, 7),
                    child: Icon(
                      icon,
                      size: 88,
                      color: isEven ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
