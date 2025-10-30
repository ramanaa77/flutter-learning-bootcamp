import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({required this.height, required this.weight});

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 40) {
      return 'Obese (Class III)';
    } else if (_bmi >= 35.0) {
      return 'Obese (Class II)';
    } else if (_bmi >= 30.0) {
      return 'Obese (Class I)';
    } else if (_bmi >= 25.0) {
      return 'Overweight (Pre-obese)';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else if (_bmi >= 17.0) {
      return 'Underweight (Mild thinness)';
    } else if (_bmi >= 16.0) {
      return 'Underweight (Moderate thinness)';
    } else {
      return 'Underweight (Severe thinness)';
    }
  }

  String getInterpretation() {
    if (_bmi >= 40) {
      return 'It’s time to take control of your health! Start with small steps and get support from a doctor. You can do this!';
    } else if (_bmi >= 35) {
      return 'You’re strong, and you can make a change! A doctor can help you make a plan that works for you. Take one step at a time, and you will see results!';
    } else if (_bmi >= 30) {
      return 'You’re on the right path! Keep going with exercise and healthy eating. Every small effort adds up, and you’re doing great!';
    } else if (_bmi >= 25) {
      return 'Good job! A little more exercise and better food choices can make you feel even better. Keep going, you’ve got this!';
    } else if (_bmi >= 18.5) {
      return 'You’re doing awesome! Keep up the healthy habits, and feel proud of how far you’ve come. Stay focused and keep it up!';
    } else if (_bmi >= 17) {
      return 'Your body needs more healthy food. Try to eat more nutritious meals to help you feel strong. You can do it!';
    } else if (_bmi >= 16) {
      return 'It’s time to take care of your health. Talk to a doctor to make sure you’re getting the right food. You can make positive changes!';
    } else {
      return 'Your health is really important! Talk to a doctor to get help and make sure you’re on the right path. You can do this!';
    }
  }
}
