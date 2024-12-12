import 'package:flutter/material.dart';

class TransferInformationPage extends StatelessWidget {
  const TransferInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Top Section
          const TransferHeader(),
          const SizedBox(height: 20),

          // Transfer Form
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: const [
                  TransferInputField(
                    icon: Icons.person,
                    hint: "Receiver's Full Name",
                  ),
                  TransferInputField(
                    icon: Icons.credit_card,
                    hint: "Payment Method",
                  ),
                  TransferInputField(
                    icon: Icons.account_balance,
                    hint: "Receiver's Account Number",
                  ),
                  TransferInputField(
                    icon: Icons.monetization_on,
                    hint: "Amount",
                  ),
                  TransferInputField(
                    icon: Icons.info_outline,
                    hint: "Reason For Transfer",
                  ),
                  SizedBox(height: 30),
                  ExchangeButton(),
                ],
              ),
            ),
          ),
          // Bottom Navigation Bar
          const BottomNavBar(),
        ],
      ),
    );
  }
}

class TransferHeader extends StatelessWidget {
  const TransferHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              const Text(
                "Transfer Information",
                style: TextStyle(
                  color: Color(0xFF00CED1),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF00CED1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "From",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Cameroon XAF",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "1",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "To",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "United Kingdom",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "0.13435",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TransferInputField extends StatelessWidget {
  final IconData icon;
  final String hint;

  const TransferInputField({super.key, required this.icon, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.black54),
        title: TextField(
          decoration: InputDecoration(
            hintText: hint,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

class ExchangeButton extends StatelessWidget {
  const ExchangeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF00CED1),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text(
          "Exchange",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.grey,
      selectedItemColor: const Color(0xFF00CED1),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: "Dskillroom",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.currency_exchange),
          label: "Exchange",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.flight),
          label: "Flight",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.support),
          label: "Support",
        ),
      ],
    );
  }
}
