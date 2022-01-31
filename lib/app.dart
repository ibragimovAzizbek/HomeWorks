import 'package:flutter/material.dart';
// import 'package:shopping/screens/home_page.dart';
// import 'package:shopping/screens/home_page2.dart';
import 'package:shopping/screens/home_page3.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shopping",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
