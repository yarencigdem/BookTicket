import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';
import '../widgets/icon_text_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // Başlangıçta seçili öğe olarak "Airline tickets" olacak
  String selectedTicket = "Airline tickets";

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 17),
        children: [
          const Gap(40),
          Text(
            "What Are \n you looking for?",
            style: Styles.headLineStyle.copyWith(fontSize: 35),
          ),
          const Gap(40),
          AppTicketsTabs(firstTab: "Airline Tickets", secondTab: "Hotels"),
          const Gap(25),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          const Gap(10),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          const Gap(10),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
            decoration: BoxDecoration(
              color: const Color(0xD91130CE),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "Find Tickets",
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          const Gap(20),
          const AppDoubleTextWidget(text: "Upcoming Flights", smallText: "View All"),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 500,
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                            image: AssetImage("images/images/plane_sit.jpg")
                        )
                      ),
                    ),
                    Gap(12),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out this chance ",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
               Stack(
                 children: [
                   Container(
                     width: size.width*0.44,
                     height: 230,
                     decoration: BoxDecoration(
                         color: Color(0xFF3ab8B8),
                         borderRadius: BorderRadius.circular(18)
                     ),
                     padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Discount\nfor survey",style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white), ),
                         Gap(10),
                         Text("Take a survey about our services and get discount",style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white, fontSize: 18), ),

                       ],
                     ),
                   ),
                   Positioned(
                     right: -45,
                       top: -40,
                       child:Container(
                         padding: EdgeInsets.all(30),
                         decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             border: Border.all(width: 18, color: Color(0xFF189999)),
                             color: Colors.transparent
                         ),
                       )
                   ),
                 ],
               ),
                  Gap(15),
                  Container(
                    width: size.width*0.44,
                    height: 210,
                    padding:   EdgeInsets.symmetric(vertical: 15, horizontal:15 ),
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                      color: const Color(0xFFEC6545)

                    ),
                    child: Column(
                      children: [
                        Text("Take Love ",style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold ), textAlign: TextAlign.center,),
                        Gap(5),
                        RichText(
                            text:const TextSpan(
                              children: [
                                TextSpan(
                                  text: '😍',
                                  style: TextStyle(fontSize: 30)
                                ),
                                TextSpan(
                                    text: '🥰',
                                    style: TextStyle(fontSize: 50)
                                ),
                                TextSpan(
                                    text: '😘',
                                    style: TextStyle(fontSize: 30)
                                )
                              ]
                            )
                        )

                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
