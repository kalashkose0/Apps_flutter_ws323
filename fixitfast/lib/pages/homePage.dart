import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: unused_import
import 'package:flutter_application_1_catalog/pages/cleaning.dart';
import 'package:flutter_application_1_catalog/uihelper.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  TextEditingController searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'FixItFast',
          style: TextStyle(
            color: Color.fromARGB(255, 77, 78, 79),
          ),
        )),
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_active_outlined),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 93, 174, 240),
              ),
              child: Text(
                "Hello here 🖐️",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              UiHelper.customtextfield(
                  searchcontroller,
                  "Service's",
                  "Search for Service",
                  Icons.search,
                  TextInputType.emailAddress,
                  false,
                  20),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Categories",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 177,
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 13,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/plumbering.png',
                                width: 80,
                                height: 70,
                                fit: BoxFit.fill,
                              ),
                              const Text(
                                'plumber',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/laundry.png',
                                width: 80,
                                height: 70,
                                fit: BoxFit.fill,
                              ),
                              const Text(
                                'Laundary',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/electrician.png',
                                width: 80,
                                height: 70,
                                fit: BoxFit.fill,
                              ),
                              const Text(
                                'Electrician',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/house-cleaning.png',
                                width: 80,
                                height: 70,
                                fit: BoxFit.fill,
                              ),
                              const Text(
                                'Cleaning',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/pressure-washer.png',
                                width: 80,
                                height: 70,
                                fit: BoxFit.fill,
                              ),
                              const Text(
                                'Washer',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Cleaning's",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 185,
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 13,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              // GestureDetector(
                              //   onTap: () {
                              //     Navigator.push(
                              //         context,
                              //         MaterialPageRoute(
                              //             builder: ((context) =>
                              //                 const CleanningScreen())));
                              //   },
                              // ),
                              Image.asset(
                                'assets/images/c3.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              const Text(
                                'Floor Cleaner',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/c2.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              const Text(
                                'Hospital Cleaner',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/c1.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              const Text(
                                'Washer',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/c4.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              const Text(
                                'Office Cleaner',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/c5.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              const Text(
                                'Cleaner',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Construction's",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 13,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/const1.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            'House',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/const2.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            'Buildings',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/const3.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            'Sites',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/const4.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            'major projects',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/const5.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            'Design',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Vehicle's",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 13,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/v1.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            '2 wheeler ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/v2.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            '3 wheeler',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/v3.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            '4 wheeler',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/v4.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            '6x6 wheeler',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/v5.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            'Trucks',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart_outlined),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
            label: 'chats',
          ),
        ],
        //  saved
        //  profile
      ),
    );
  }
}
