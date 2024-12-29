import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: screenWidth * 0.03, // Ekran genişliğine göre oranlama
        horizontal: screenWidth * 0.03,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(screenWidth * 0.025),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFFBFC2DF)),
          const Gap(10),
          Text(text, style: Styles.textStyle),
        ],
      ),
    );
  }
}
