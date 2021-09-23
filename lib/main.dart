import 'package:flutter/material.dart';
import 'package:instagram/ui/ui.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color whiteColor = Color(0xFFFFFFFF);
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        scaffoldBackgroundColor: whiteColor,
      ),
      debugShowCheckedModeBanner: false,
      home: UiInstagramWidget(),
    );
  }
}
