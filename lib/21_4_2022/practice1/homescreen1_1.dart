import 'package:flutter/material.dart';
import 'package:share_prefrences/21_4_2022/practice1/practice1SharePref.dart';

class HOmeScreen1 extends StatefulWidget {
  const HOmeScreen1({Key? key}) : super(key: key);

  @override
  State<HOmeScreen1> createState() => _HOmeScreen1State();
}

class _HOmeScreen1State extends State<HOmeScreen1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String inputValue = SharePrefObj1.getName;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(inputValue),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  SharePrefObj1.getName = 'Hello World';
                });
              },
              child: const Text('ADD'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  SharePrefObj1.getName = "Today Is Best Day";
                });
              },
              child: const Text('ADD2'),
            ),
          ],
        ),
      ),
    );
  }
}
