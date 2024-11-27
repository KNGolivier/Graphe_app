//import 'package:facture_app/files/DetailsPage.dart';
//import 'package:facture_app/files/FacturePage.dart';
//import 'package:facture_app/files/HomePage.dart';
import 'package:facture_app/files/Test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Test(),
      debugShowCheckedModeBanner: false,
      title: "Facture_App",
    );
  }
}
