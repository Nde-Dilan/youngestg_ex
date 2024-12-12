
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00CED1), // Background color
      appBar: AppBar(
        backgroundColor: const Color(0xFF00CED1),
        elevation: 0,
        title: const Text(
          "Register your Account",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Full Name
              const TextField(
                decoration: InputDecoration(
                  labelText: "Full Name",
                  hintText: "Enter Your First Name",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              
              // Nick Name
              const TextField(
                decoration: InputDecoration(
                  labelText: "Nick Name",
                  hintText: "Enter Your Last Name",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Email
              const TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Phone Number
              const TextField(
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  hintText: "Enter Your phone number",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.flag),
                ),
              ),
              const SizedBox(height: 16),

              // Password
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter Your Password",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              const SizedBox(height: 16),

              // Confirm Password
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  hintText: "Enter Your Password",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Referral Code
              const TextField(
                decoration: InputDecoration(
                  labelText: "Referral code (optional)",
                  hintText: "Enter Referral Code",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Base Currency
              DropdownButtonFormField<String>(
                items: const [
                  DropdownMenuItem(
                    value: "USD",
                    child: Text("USD"),
                  ),
                  DropdownMenuItem(
                    value: "EUR",
                    child: Text("EUR"),
                  ),
                  DropdownMenuItem(
                    value: "NGN",
                    child: Text("NGN"),
                  ),
                ],
                onChanged: (value) {},
                decoration: const InputDecoration(
                  labelText: "Base Currency",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Terms Checkbox
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  const Expanded(
                    child: Text(
                      "I accept the terms of use and privacy policy",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Sign Up Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
