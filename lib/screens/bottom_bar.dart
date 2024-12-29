import 'package:booktickets/screens/home_screen.dart';
import 'package:booktickets/screens/profile_screen.dart';
import 'package:booktickets/screens/search_screen.dart';
import 'package:booktickets/screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class  BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=0;
  static final List<Widget> _widgetoptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    TicketScreen(),
   ProfileScreen(),
  ];
  void _onItemTapped (int index){
   setState(() {
     _selectedIndex=index;
   });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

          body:  Center(
        child: _widgetoptions[_selectedIndex]
    ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: const Color(0xFF526480),
          items: [
              BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_add_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_home_add_filled),
                  label: "Home"),
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "Search"),
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "Tickets"),
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
                label: "Profile"),

]

      ),
    );
  }
}
