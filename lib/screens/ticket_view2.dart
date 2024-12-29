import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView2 extends StatelessWidget {
  const TicketView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(21),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          // Üst bölüm: Şehirler ve uçuş süresi
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "NYC",
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Gap(4),
                  Text(
                    "New-York",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Column(
                children: const [
                  Icon(Icons.flight_takeoff, color: Colors.blue),
                  Gap(4),
                  Text("8H 30M"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    "LDN",
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Gap(4),
                  Text(
                    "London",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Gap(16),
          // Orta bölüm: Tarih ve saat bilgisi
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              TicketInfo(title: "Date", value: "1 MAY"),
              TicketInfo(title: "Departure time", value: "08:00 AM"),
              TicketInfo(title: "Number", value: "23"),
            ],
          ),
          const Divider(color: Colors.grey),
          const Gap(16),
          // Alt bölüm: Yolcu ve ödeme bilgileri
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              TicketInfo(title: "Passenger", value: "Flutter DB"),
              TicketInfo(title: "Passport", value: "5221 364869"),
            ],
          ),
          const Gap(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              TicketInfo(title: "Number of E-ticket", value: "364738 28274478"),
              TicketInfo(title: "Booking code", value: "B2SG28"),
            ],
          ),
          const Divider(color: Colors.grey),
          const Gap(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              TicketInfo(title: "Payment method", value: "VISA *** 2462"),
              TicketInfo(title: "Price", value: "\$249.99"),
            ],
          ),
          const Gap(16),
          // Barkod bölümü
          Container(
            height: 50,
            color: Colors.grey.shade300,
            child: Center(
              child: Text(
                "|| ||| ||||| || |||| ||",
                style: TextStyle(fontSize: 18, letterSpacing: 3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TicketInfo extends StatelessWidget {
  final String title;
  final String value;
  const TicketInfo({required this.title, required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
        const Gap(4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
