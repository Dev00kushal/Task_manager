// ignore_for_file: camel_case_types

import 'package:calculatorapp/Constants/colors.dart';
import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget {
  final String? name;
  const customAppBar({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/Settings.png"),
          )
        ],
        title: Text(
          name ?? "",
          style: const TextStyle(color: grey),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: grey),
        elevation: 0,
      ),
    );
  }
}
