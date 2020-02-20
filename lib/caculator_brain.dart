import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'FUCKING Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal as Fuck';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return '아주 많이 살쪘음, 살빼';
    } else if (_bmi > 18.5) {
      return '조금 살쪘음, 살빼';
    } else {
      return '별로 안쪘음, 살쪄';
    }
  }
}
