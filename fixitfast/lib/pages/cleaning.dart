// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1_catalog/uihelper.dart';

class CleanningScreen extends StatelessWidget {
  const CleanningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FixItFast",
          style: TextStyle(
            color: Color.fromARGB(255, 111, 116, 121),
            fontWeight: FontWeight.w800,
            fontSize: 35,
          ),
        ),
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 60,
          ),
          // UiHelper.customContainer(
          //   60,
          //   400,
          //   Colors.white,
          //   const Center(
          //     child: Text(
          //       " FixItFast ",
          //       style: TextStyle(
          //         color: Color.fromARGB(255, 111, 116, 121),
          //         fontWeight: FontWeight.w800,
          //         fontSize: 35,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
