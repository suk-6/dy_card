// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:dy_card/mainpage.dart';
import 'package:get/get.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 1), () {
      Get.offAll(() => const MainPage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        Container(
          color: Colors.black,
          child: const Center(
              child: Text(
            "DY Card",
            style: TextStyle(
                fontSize: 25, fontFamily: "NotoSansKR", color: Colors.white),
          )),
        ),
        // const CircularProgressIndicator()
      ]),
    );
  }
}
