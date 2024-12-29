import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key, this.isColor});
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isColor== null? Color(0xFF526799): Colors.white,
        borderRadius: BorderRadius.circular(21),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("NYC", style:isColor== null?  Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3),
              const Spacer(),
              ThickContainer(isColor: true,),
              const Spacer(),
              Icon(Icons.flight_takeoff, color: Colors.white),
              const Spacer(),
              ThickContainer(isColor: true,),
              const Spacer(),
              Text("LND", style:isColor== null?  Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3),
            ],
          ),
          const Gap(5),
          Divider(color: Colors.white),
          const Gap(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("1 May", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                  Text("Date", style: Styles.textStyle.copyWith(color: Colors.white70)),
                ],
              ),
              Column(
                children: [
                  Text("08:00 AM", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                  Text("Departure time", style: Styles.textStyle.copyWith(color: Colors.white70)),
                ],
              ),
              Column(
                children: [
                  Text("23", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                  Text("Number", style: Styles.textStyle.copyWith(color: Colors.white70)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
