import 'package:booktickets/screens/ticket_view2.dart';
import 'package:booktickets/screens/tickets_views.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [ ListView(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          children: [
            Gap(40),
            Text("Tickets",style: Styles.headLineStyle,),
            Gap(20),
            AppTicketsTabs(firstTab: "Upcoming", secondTab:"Previous"),
            Gap(20),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: TicketView2(),
            )
          ],
        ),
      ]),
    );
  }
}
