import 'package:flutter/material.dart';
import 'homescreen.dart'; // Pastikan file homescreen.dart berada di folder yang sama (lib/)

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Cukup ditulis sekali di sini
      home: HomeScreen(),                // Mengarahkan halaman utama ke HomeScreen
    );
  }
}