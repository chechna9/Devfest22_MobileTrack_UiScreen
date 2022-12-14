import 'package:devfest_challenges/pages/agenda_page.dart';
import 'package:devfest_challenges/pages/events.dart';
import 'package:devfest_challenges/pages/feedbacks.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SafeArea(
        child: Events(),
      ),
    );
  }
}
