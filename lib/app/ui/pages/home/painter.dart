import 'package:flutter/material.dart';

class Paiter extends CustomPainter {
  final String label;

  Paiter(this.label);
  void paint(Canvas canvas, Size size) {
    //TODO
    Paint paint = Paint();
    final recua = Rect.fromLTWH(0, 0, size.width, size.height);
    final RRect rRect = RRect.fromRectAndRadius(recua, Radius.circular(10));
    paint.color = Colors.green;
    canvas.drawCircle(Offset(20, size.height / 2), 10, paint);

    final textPainter = TextPainter(
        text: TextSpan(
          text: label,
          style: TextStyle(fontSize: 12, color: Colors.black),
        ),
        maxLines: 2,
        textDirection: TextDirection.ltr);
    textPainter.layout(minWidth: 0, maxWidth: size.width - 50);
    textPainter.paint(
        canvas, Offset(40, size.height / 2 - textPainter.size.height / 2));
  }

  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
