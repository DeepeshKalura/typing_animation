# Typing Animation

[![Pub Version](https://img.shields.io/pub/v/typing_animation.svg)](https://pub.dev/packages/typing_animation)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A Flutter package for creating typing animations.

## Features

- Animate text being typed and backspaced.
- Customizable text style.
- Easy to use.

## Getting Started

To use this package, add `typing_animation` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/packages-and-plugins/using-packages).

## Usage

```dart
import 'package:flutter/material.dart';
import 'package:typing_animation/typing_animation.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TypingAnimation(
          text: 'Welcome to the Future of Learning!',
          textStyle: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
