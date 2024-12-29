import 'package:flutter/material.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';

class HotelScreen extends StatefulWidget {
 final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  _HotelScreenState createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;  // Kullanımı değiştirdim
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: EdgeInsets.only(right:16, left: 17),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
          color: Colors.grey.shade200,
        blurRadius: 20,
        spreadRadius: 5,
      )
          ]
      ),
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                image: AssetImage("images/images/${widget.hotel['image']}"),
                fit: BoxFit.cover,  // Görseli düzgün yerleştir.
              ),
            ),
          ),
    const Gap(10),
    Text(
    widget.hotel['place'],
    style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor)
    ),
    const Gap(5),
    Text(
        widget.hotel['destination'],
    style: Styles.headLineStyle3.copyWith(color: Styles.kakiColor)
    ),
    const Gap(8),
    Text(
       '\$${ widget.hotel['price']}/night',
    style: Styles.headLineStyle.copyWith(color: Styles.kakiColor)
    ),

        ],
      ),
    );
  }
}
