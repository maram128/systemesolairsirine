import 'package:flutter/material.dart';
import 'acceuil.dart'; // Import de la page Accueil

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'النظام الشمسي',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 33, 36, 50),
        ),
        useMaterial3: true,
        fontFamily: 'Cairo',
      ),
      home: const AccueilPage(),
    );
  }
}
