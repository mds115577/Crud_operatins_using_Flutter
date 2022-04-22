import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/draw.dart';
import 'package:flutter_application_2/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Padding(
          padding: EdgeInsets.only(left: 80.0),
          child: Text(
            'Brototype',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
          ),
        ),
      ),
      drawer: const Mydrawer(),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, index) {
            return Column(
              children: [
                Container(
                    height: 670,
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Our Programs',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: const AssetImage(
                                      'assets/images/4.png',
                                    ),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/5.jpg',
                                    ),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: const AssetImage(
                                      'assets/images/6.png',
                                    ),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Our Courses',
                  style: const TextStyle(
                      fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  child: ListView(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          color: Colors.lightBlueAccent,
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 60.0,
                                child: ClipRRect(
                                  child: Image.asset('assets/images/flut.png'),
                                  borderRadius: BorderRadius.circular(57.0),
                                ),
                              ),
                              const Text(
                                'Flutter',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          color: Colors.lightBlue,
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 60.0,
                                child: ClipRRect(
                                  child: Image.asset('assets/images/React.jpg'),
                                  borderRadius: BorderRadius.circular(47.0),
                                ),
                              ),
                              const Text(
                                'React Native',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          color: Colors.greenAccent,
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 60.0,
                                child: ClipRRect(
                                  child: Image.asset('assets/images/mern.jpg'),
                                  borderRadius: BorderRadius.circular(47.0),
                                ),
                              ),
                              const Text(
                                'Android',
                                style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          color: Colors.orange.shade900,
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 60.0,
                                child: ClipRRect(
                                  child: Image.asset('assets/images/swift.png'),
                                  borderRadius: BorderRadius.circular(47.0),
                                ),
                              ),
                              const Text(
                                'Swift',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ]),
                ),
                const Padding(
                  padding: const EdgeInsets.only(top: 18.0, bottom: 10.0),
                  child: const Text(
                    'Collaboration',
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  color: Colors.white10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/cyb1.jpg',
                              width: 180,
                            ),
                            const Text(
                              'Apple',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/cyb2.jpg',
                              width: 180,
                            ),
                            const Text(
                              'Microsoft',
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/cyb3.jpg',
                              width: 180,
                            ),
                            const Text(
                              'Meta',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/cyb4.jpg',
                              width: 180,
                            ),
                            const Text(
                              'Amazon',
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
