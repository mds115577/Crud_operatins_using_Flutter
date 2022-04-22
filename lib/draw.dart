import 'package:flutter/material.dart';
import 'package:flutter_application_2/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.black,
            height: 200,
            width: 300,
            child: const Center(
                child: Text(
              'CrossRoads',
              style: TextStyle(fontSize: 40.0, color: Colors.white),
            )),
          ),
          Container(
            width: 300,
            height: 580,
            color: Colors.white,
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    'User Details',
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: null,
                ),
                const ListTile(
                  leading: Icon(Icons.settings),
                  title: Text(
                    'Settings',
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: null,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 100.0)),
                    ElevatedButton(
                      onPressed: () async {
                        final _sharedPrefs =
                            await SharedPreferences.getInstance();
                        _sharedPrefs.clear();
                        signout(context);
                      },
                      child: Text('LogOut'),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  signout(BuildContext ctx) {
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => Login()), (route) => false);
  }
}
