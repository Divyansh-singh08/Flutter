import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculatorBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVER-WEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDER-WEIGTH';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a Higher then body Weight.Try to do more EXERCISE';
    } else if (_bmi > 18.5) {
      return 'You have a NORMAL body Weight.Good JOb!';
    } else {
      return 'You have a Lower then body Weight.You can Eat  more health FOODS';
    }
  }
}
