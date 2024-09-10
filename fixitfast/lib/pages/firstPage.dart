import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1_catalog/pages/secondPage.dart';
import 'package:flutter_application_1_catalog/uihelper.dart';

class firstScreen extends StatelessWidget {
  const firstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          UiHelper.customContainer(
            60,
            400,
            Colors.white,
            const Center(
              child: Text(
                " FixItFast ",
                style: TextStyle(
                  color: Color.fromARGB(255, 111, 116, 121),
                  fontWeight: FontWeight.w800,
                  fontSize: 35,
                ),
              ),
            ),
          ),
          UiHelper.customText("Best Helping", FontWeight.bold, 35,
              Color.fromARGB(255, 93, 174, 240), "bold"),
          UiHelper.customText("Hands For You", FontWeight.bold, 35,
              Color.fromARGB(255, 93, 174, 240), "bold"),
          const SizedBox(
            height: 15,
          ),
          UiHelper.customText("Your Idea's Our Effort's. Always try to give",
              FontWeight.bold, 16, Colors.black, "bold"),
          UiHelper.customText("a better Service to you.", FontWeight.bold, 16,
              Colors.black, "bold"),
          const SizedBox(
            height: 5,
          ),
          UiHelper.customContainer(
              400,
              250,
              Colors.green,
              Image.asset(
                "assets/images/img_2.jpg",
                fit: BoxFit.fill,
              )),
          const SizedBox(
            height: 10,
          ),
          // UiHelper.customContainer(
          //     50, 350, Color.fromARGB(255, 93, 174, 240), Text("Get Started")),
          UiHelper.customButton(
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => secondPage()));
            },
            "Ge Started",
            Color.fromARGB(255, 93, 174, 240),
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
