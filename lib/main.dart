import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:to_do_list/pages/home_page.dart';

void main() async {
  // init Hive
  await Hive.initFlutter();

  //open a box
  // ignore: unused_local_variable
  var box = await Hive.openBox('MyBox');

  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //to remove the tag"Debug" at the to
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
