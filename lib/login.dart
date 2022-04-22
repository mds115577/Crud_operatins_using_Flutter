import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  final pass = 'mds11';
  final uname = 'shahid';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Image.asset(
            'assets/images/crossroads.jpg',
            height: 140,
            width: 250,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 40.0, right: 100, bottom: 30),
                  child: Text(
                    'Connect With Us',
                    style: TextStyle(
                        fontSize: 60.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(right: 40),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, bottom: 20),
                      child: TextFormField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          hintText: 'Username',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(80),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value != uname) {
                            return 'please enter valid username';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                      ),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(80),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty || value != pass) {
                            return 'Enter valid Password';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              checkLogin(context);
                            }
                          },
                          child: Text('Sign In'),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                          ),
                        ),
                      ],
                    ),
                    TextButton(onPressed: () {}, child: Text('Forgot Details?'))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void checkLogin(BuildContext ctx) async {
    final _username = _usernameController.text;
    final _paswword = _passwordController.text;
    if (_username == uname && _paswword == pass) {
      //gotohome
      final _sharedPrefs = await SharedPreferences.getInstance();
      _sharedPrefs.setBool(Save_key_name, true);
      Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(
          builder: (ctx1) => const ScreenHome(),
        ),
      );
    }
  }
}
