import 'package:flutter/material.dart';

class ChatBubbleNotifier extends ChangeNotifier {
  ChatBubbleNotifier(){
    
  }
  late AnimationController _controller;
  late Animation<double> _floatingAnimation;
  late Animation<double> _rotationAnimation;

  double floatingValue = 0.0;
  double rotationValue = 0.0;

  // Getter for the animation values
  double get getFloatingValue => floatingValue;
  double get getRotationValue => rotationValue;

  void initializeAnimation(TickerProvider vsync) {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: vsync,
    );

    // Floating animation (up and down)
    _floatingAnimation = Tween<double>(begin: -10, end: 10).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Rotation animation (360 degrees)
    _rotationAnimation = Tween<double>(begin: 0, end: 2 * 3.14159).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );

    // Start the animations by calling repeat on the controller
    _controller
      ..repeat() // This repeats the rotation animation indefinitely
      ..forward(); // Starts the floating animation
    
    // Listen to animation updates and notify listeners
    _controller.addListener(() {
      floatingValue = _floatingAnimation.value;
      rotationValue = _rotationAnimation.value;
      notifyListeners();
    });
  }

  void disposeAnimation() {
    _controller.dispose();
    super.dispose();
  }
}
