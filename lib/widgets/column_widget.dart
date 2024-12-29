import 'package:flutter/cupertino.dart';

import '../utils/app_styles.dart';

class ColumnWidget extends StatelessWidget {
  final String text1,text3;
  final String text2,text4;
  const ColumnWidget({super.key, required this.text1, required this.text2, required this.text3, required this.text4});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Sol hizalama
          children: [
            Text(
              text1,
              style: Styles.headLineStyle2.copyWith(fontSize: 16),
            ),
            Text(
              text2,
              style: Styles.headLineStyle4.copyWith(fontSize: 14),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end, // Sağ hizalama
          children: [
            Text(
              text3,
              style: Styles.headLineStyle2.copyWith(fontSize: 16),
            ),
            Text(
              text4,
              style: Styles.headLineStyle4.copyWith(fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }
}
