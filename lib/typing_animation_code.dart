import 'package:flutter/material.dart';

class TypingAnimation extends StatefulWidget {
  final String text;
  final TextStyle? textStyle;

  const TypingAnimation({super.key, required this.text, this.textStyle});

  @override
  TypingAnimationState createState() => TypingAnimationState();
}

class TypingAnimationState extends State<TypingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _typingTextAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.text.length * 200),
    );

    _typingTextAnimation = IntTween(
      begin: 0,
      end: widget.text.length,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    String typingText = widget.text.substring(0, _typingTextAnimation.value);

    return Text(
      typingText,
      style: widget.textStyle ??
          const TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
