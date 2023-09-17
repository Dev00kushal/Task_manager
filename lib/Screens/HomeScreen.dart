import 'package:calculatorapp/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: customAppBar(name: "Home"),
    );
  }
}
