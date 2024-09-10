import 'package:flutter/material.dart';
import 'package:flutter_application_1_catalog/pages/thirdPage.dart';
import 'package:flutter_application_1_catalog/uihelper.dart';

class secondPage extends StatefulWidget {
  const secondPage({super.key});

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController numcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FixItFast",
          style: TextStyle(
            color: Color.fromARGB(255, 77, 78, 79),
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg1.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                UiHelper.customtextfield(emailcontroller, "Enter Email",
                    "Email", Icons.mail, TextInputType.emailAddress, false, 12),
                const SizedBox(
                  height: 15,
                ),
                UiHelper.customtextfield(numcontroller, "Enter Number",
                    "Number", Icons.numbers, TextInputType.number, false, 12),
                const SizedBox(
                  height: 15,
                ),
                UiHelper.customtextfield(
                    passwordcontroller,
                    "Enter Padsword",
                    "Password",
                    Icons.password,
                    TextInputType.emailAddress,
                    true,
                    12),
                const SizedBox(
                  height: 15,
                ),
                UiHelper.customButton(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => thirdPage()),
                    );
                  },
                  "Sign Up",
                  Color.fromARGB(255, 93, 174, 240),
                  textColor: Colors.black,
                ),
                const SizedBox(
                  height: 10,
                ),
                UiHelper.customText("Alredy have an account ", FontWeight.w300,
                    13, Colors.black, "bold"),
                const SizedBox(
                  height: 10,
                ),
                UiHelper.customButton(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => thirdPage()),
                    );
                  },
                  "LogIn",
                  Color.fromARGB(255, 93, 174, 240),
                  textColor: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
