import 'package:flutter/material.dart';

class RoundedRectanglePage extends StatelessWidget {
  const RoundedRectanglePage({super.key});

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
            foregroundPainter: RoundedRectanglePainter(),
          ),
        ),
      ),
    );
  }
}

class RoundedRectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    final a =
        Offset(size.width * 1 / 6, size.height * 1 / 4); // top corner (x,y)
    final b =
        Offset(size.width * 5 / 6, size.height * 3 / 4); //bottom corner (x,y)

    final rect = Rect.fromPoints(a, b);
    final radius = Radius.circular(32);

    canvas.drawRRect(RRect.fromRectAndRadius(rect, radius), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
