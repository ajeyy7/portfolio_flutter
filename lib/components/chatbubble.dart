import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key});

  @override
  Widget build(BuildContext context) {
    // Accessing theme colors
    final theme = Theme.of(context);
    final bubbleColor = theme.colorScheme.surface; // Adapts to the theme surface color
    final borderColor = theme.colorScheme.onSurface; // Adapts to the theme border color

    return Transform.translate(
      offset: const Offset(0, 0), // No floating effect
      child: Transform.rotate(
        angle: 0, // No rotation effect
        child: CustomPaint(
          painter: ChatBubblePainter(
            bubbleColor: bubbleColor,
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: borderColor), // Dynamic border color
              color: bubbleColor, // Dynamic container color
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: const Text(
              "Hello, I am",
              style: TextStyle(color: gray, fontSize: 16), // Adjust text color if needed
            ),
          ),
        ),
      ),
    );
  }
}

class ChatBubblePainter extends CustomPainter {
  final Color bubbleColor;

  ChatBubblePainter({required this.bubbleColor});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = bubbleColor // Dynamic color for the triangle (tail)
      ..style = PaintingStyle.fill;

    // Draw the triangle (chat bubble tail)
    final trianglePath = Path();
    trianglePath.moveTo(size.width / 2 - 8, size.height); // Left point of the tail
    trianglePath.lineTo(size.width / 2, size.height + 10); // Bottom point of the tail
    trianglePath.lineTo(size.width / 2 + 8, size.height); // Right point of the tail
    trianglePath.close();

    canvas.drawPath(trianglePath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
