import 'package:flutter/material.dart';

import 'package:test_00/gradient.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer.color(),
      ),
    ),
  );
}
