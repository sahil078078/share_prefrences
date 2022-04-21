import 'package:flutter/material.dart';
import '21_4_2022/practice1/homescreen1_1.dart';
import '21_4_2022/practice1/practice1SharePref.dart';
import '21_4_2022/practice2/homescreen212.dart';
import '21_4_2022/practice2/practicesharepref212.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await sharePref212obj.initialize212();
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen212(),
    ),
  );
}
