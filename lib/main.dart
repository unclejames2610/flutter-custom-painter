import 'package:customer_painter_tutorial/page/circle_paint_page.dart';
import 'package:customer_painter_tutorial/page/line_paint_page.dart';
import 'package:customer_painter_tutorial/page/rectangle_paint_page.dart';
import 'package:customer_painter_tutorial/page/rounded_rectangle_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CirclePaintPage(),
    );
  }
}
