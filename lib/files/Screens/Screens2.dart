import 'package:flutter/material.dart';

class Screens2 extends StatelessWidget {
  const Screens2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF07313A),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                "assets/Logo.png",
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              "assets/IM1.png",
              fit: BoxFit.cover,
              height: 400,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Create Invoices \n Faster and Easier",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Simplify billing invoices, Through an automated \n payment system,payment will be faster and \n easier.",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
