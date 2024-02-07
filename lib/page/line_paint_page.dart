import 'package:flutter/material.dart';

class LinePaintPage extends StatelessWidget {
  const LinePaintPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          color: Colors.white,
          width: 300,
          height: 300,
          child: CustomPaint(
            foregroundPainter: LinePainter(),
          ),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10;
    canvas.drawLine(
      Offset(size.width * 1 / 6, size.height * 1 / 2), //start point
      Offset(size.width * 5 / 6, size.height * 1 / 2), //end point (x, y)
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
