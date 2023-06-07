import 'package:flutter/material.dart';

import 'src/pages/home/home_page.dart';

void main() {
  runApp(const CeosMobileApp());
}

class CeosMobileApp extends StatelessWidget {
  const CeosMobileApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ceos Mobile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
