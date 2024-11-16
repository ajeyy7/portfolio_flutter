import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final Color bubbleColor;
  final Color borderColor;
  final String text;
  const ChatBubble({
    super.key,
    required this.bubbleColor,
    required this.borderColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomPaint(
        painter: ChatBubblePainter(
          bubbleColor: bubbleColor,
          borderColor: borderColor,
        ),
        child: Container(
          // Set a fixed width or adjust padding
          width: 170, // Increase the width of the rectangle
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}

class ChatBubblePainter extends CustomPainter {
  final Color bubbleColor;
  final Color borderColor;

  ChatBubblePainter({required this.bubbleColor, required this.borderColor});

  @override
  void paint(Canvas canvas, Size size) {
    final bubblePaint = Paint()
      ..color = bubbleColor
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    // Rectangle with a reduced border radius
    final rectPath = Path()
      ..addRRect(RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        const Radius.circular(5), // Reduced border radius
      ));

    // Triangle path
    final trianglePath = Path();
    double triangleHeight = 10;
    double triangleBaseWidth = 16;

    trianglePath.moveTo(
        size.width / 2 - triangleBaseWidth / 2, size.height); // Bottom left
    trianglePath.lineTo(
        size.width / 2, size.height + triangleHeight); // Tip of triangle
    trianglePath.lineTo(
        size.width / 2 + triangleBaseWidth / 2, size.height); // Bottom right
    trianglePath.close();

    // Combine rectangle and triangle
    final combinedPath =
        Path.combine(PathOperation.union, rectPath, trianglePath);

    // Draw the bubble
    canvas.drawPath(combinedPath, bubblePaint);

    // Draw the border
    canvas.drawPath(combinedPath, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
