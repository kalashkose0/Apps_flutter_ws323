import 'package:flutter/material.dart';
import 'package:flutter_application_1_catalog/pages/homePage.dart';
import 'package:flutter_application_1_catalog/uihelper.dart';

class thirdPage extends StatefulWidget {
  const thirdPage({super.key});

  @override
  State<thirdPage> createState() => _secondPageState();
}

class _secondPageState extends State<thirdPage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg1.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 80,
                ),
                UiHelper.customtextfield(emailcontroller, "Enter Email",
                    "Email", Icons.mail, TextInputType.emailAddress, false, 12),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  height: 15,
                ),
                UiHelper.customtextfield(
                    passwordcontroller,
                    "Enter Password",
                    "Password",
                    Icons.password,
                    TextInputType.emailAddress,
                    true,
                    12),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  height: 10,
                ),
                UiHelper.customButton(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homePage()),
                    );
                  },
                  "LogIn",
                  Color.fromARGB(255, 93, 174, 240),
                  textColor: Colors.black,
                ),
                const SizedBox(
                  height: 10,
                ),
                UiHelper.customText(
                  "  Don't have an account? Sign Up",
                  FontWeight.w300,
                  13,
                  Colors.black,
                  "bold",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
