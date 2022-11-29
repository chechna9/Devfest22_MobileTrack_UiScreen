import 'package:flutter/material.dart';

class ActionModele {
  final String time;
  final String date;
  final String name;
  final Color? main;
  final Color? sec;
  ActionModele({
    required this.date,
    required this.name,
    required this.time,
    required this.main,
    required this.sec,
  });
}
