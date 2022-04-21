import 'package:flutter/material.dart';
import 'package:share_prefrences/21_4_2022/practice2/practicesharepref212.dart';

class HomeScreen212 extends StatefulWidget {
  const HomeScreen212({Key? key}) : super(key: key);

  @override
  State<HomeScreen212> createState() => _HomeScreen212State();
}

class _HomeScreen212State extends State<HomeScreen212> {
  @override
  Widget build(BuildContext context) {
    String nameValue = sharePref212obj.getName;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(nameValue),
            ElevatedButton(
              onPressed: () {
                sharePref212obj.getName = "I am BatMan";
                setState(() {});
              },
              child: const Text("Batsy"),
            ),
            ElevatedButton(
              onPressed: () {
                sharePref212obj.getName = "I am IronMan";
                setState(() {});
              },
              child: const Text("Irony"),
            ),
            ElevatedButton(
              onPressed: () {
                sharePref212obj.remove();
                setState(() {});
              },
              child: const Text('Remove/Delete'),
            ),
            ElevatedButton(
              onPressed: () {
                sharePref212obj.remove2().then((value) {
                  setState(() {});
                });
              },
              child: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
