import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_prefrences/20_4_2022/shareprefrenceclass.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(sharedPrefs.getName),
          ElevatedButton(
            onPressed: () {
              sharedPrefs.getName = "Add";
              setState(() {});
            },
            child: const Text('Add'),
          ),
          ElevatedButton(
            onPressed: () {
              sharedPrefs.getName = "Get";
              setState(() {});
            },
            child: const Text('Get'),
          ),
        ],
      ),
    );
  }
}
