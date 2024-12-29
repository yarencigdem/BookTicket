import 'package:flutter/material.dart';

class AppTicketsTabs extends StatefulWidget {
  final String firstTab;
  final String secondTab;

  const AppTicketsTabs({
    Key? key,
    required this.firstTab,
    required this.secondTab,
  }) : super(key: key);

  @override
  _AppTicketsTabsState createState() => _AppTicketsTabsState();
}

class _AppTicketsTabsState extends State<AppTicketsTabs> {
  late String selectedTicket;

  @override
  void initState() {
    super.initState();
    selectedTicket = widget.firstTab; // Varsayılan olarak ilk sekme seçili
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(3.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFF4F6FD),
      ),
      child: Row(
        children: [
          /* Airline tickets */
          GestureDetector(
            onTap: () {
              setState(() {
                selectedTicket = widget.firstTab;
              });
            },
            child: Container(
              width: screenWidth * 0.4,
              padding: const EdgeInsets.symmetric(vertical: 17),
              decoration: BoxDecoration(
                borderRadius:
                const BorderRadius.horizontal(left: Radius.circular(40)),
                color: selectedTicket == widget.firstTab
                    ? Colors.grey
                    : Colors.white,
              ),
              child: Center(
                child: Text(
                  "Airline tickets",
                  style: TextStyle(
                    color: selectedTicket == widget.firstTab
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            ),
          ),
          /* Hotels tickets */
          GestureDetector(
            onTap: () {
              setState(() {
                selectedTicket = widget.secondTab;
              });
            },
            child: Container(
              width: screenWidth * 0.4,
              padding: const EdgeInsets.symmetric(vertical: 17),
              decoration: BoxDecoration(
                borderRadius:
                const BorderRadius.horizontal(right: Radius.circular(40)),
                color: selectedTicket == widget.secondTab
                    ? Colors.grey
                    : Colors.white,
              ),
              child: Center(
                child: Text(
                  "Hotels tickets",
                  style: TextStyle(
                    color: selectedTicket == widget.secondTab
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
