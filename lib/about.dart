import 'package:flutter/material.dart';
//import 'package:exam/home.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 1,
            child: const Center(
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 50,
              ),
            ),
          ),
          ListTile(
            title: const Text('Email'),
            subtitle: const Text("rayyanbin786@gmail.com"),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Phone Number'),
            subtitle: const Text("03337865667"),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Date Of Birth'),
            subtitle: const Text("01-04-1999"),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('City'),
            subtitle: const Text("Karachi"),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
