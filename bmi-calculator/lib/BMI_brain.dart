import 'dart:math';

class BMIBrain {

  BMIBrain({this.height, this.weight});

  final height;
  final weight;

  double _bmi;

  String calculateBMI () {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult () {
    if (_bmi >= 25){
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation () {
    if (_bmi >= 25){
      return 'You have a higher body weight than normal. Try yoga and exercise';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Stay Healthy';
    } else {
      return 'You have a lower body weightthan normal. Try eating more';
    }
  }
}