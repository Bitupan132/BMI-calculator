import 'package:flutter/material.dart';
import 'dart:math';

class Calculator {
  Calculator({@required this.height, @required this.weight});
  final int weight;
  final int height;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResultText() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getResultMessage() {
    if (_bmi >= 25) {
      return 'Your have a higher than normal bodyweight. Try excercising more!';
    } else if (_bmi >= 18.5) {
      return 'Congrats! You have a normal bodyweight.';
    } else {
      return 'You have a lower than normal bodyweight. Try to Eat more!';
    }
  }
}
