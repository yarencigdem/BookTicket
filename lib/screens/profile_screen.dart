import 'package:booktickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/column_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(40),
          // Profile Header
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(

                height: 86,
                width: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: AssetImage("images/images/logo.png"),
                  ),
                ),
              ),
              Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: Styles.headLineStyle),
                  Gap(2),
                  Text(
                    "New-York",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(8),
                  // Premium Status
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFF526799),
                          ),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(5),
                        Text(
                          "Premium Status",
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(5),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  print("bastın");
                },
                child: Text(
                  "Edit",
                  style: Styles.textStyle.copyWith(
                    color: Styles.primaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
          Gap(40),
          Divider(color: Colors.grey.shade300),
          Gap(8),

          // Stack widget for the award section
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
          /*    Positioned(
                right: -35,
                top: -30,
                child: Container(
                  height: 30,
                  width: 30,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: Color(0xFF264CD2)),
                  ),
                ),
              ),*/
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 20,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(12),
                    Expanded(child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a new award",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                      ],
                    ),)
                  ],
                ),
              ),
            ],
          ),

          // Miles Information
          Text("Accumulated miles", style: Styles.headLineStyle2),
          Container(
            child: Column(
              children: [
                Gap(15),
                Text(
                  "192802",
                  style: TextStyle(
                    fontSize: 45,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "23 May 2024",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Gap(5),
                ColumnWidget(
                  text1: "23 042",
                  text2: "Miles",
                  text3: "Airline CO",
                  text4: "Received from",
                ),
                Gap(8),
                ColumnWidget(
                  text1: "24",
                  text2: "Miles",
                  text3: "McDonald's",
                  text4: "Received from",
                ),
                Gap(8),
                ColumnWidget(
                  text1: "52 340",
                  text2: "Miles",
                  text3: "Exuma",
                  text4: "Received from",
                ),
                Gap(12),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "How to get more miles",
                        style: Styles.headLineStyle3.copyWith(fontSize: 16),
                      ),
                    ],
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
