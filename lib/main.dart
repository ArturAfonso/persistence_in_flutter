import 'package:flutter/material.dart';
import 'package:persistence_in_flutter/features/products/pages/crud.dart';
import 'package:persistence_in_flutter/features/welcome/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PeF Delivery',
      theme: ThemeData(
        primaryColor: Colors.indigo.shade900,
      ),
      home: WelcomePage(),
    );
  }
}
