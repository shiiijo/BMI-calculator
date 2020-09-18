class Brain {
  Brain({this.height, this.weight});
  final height;
  final weight;
  double _bmi = 0;
  String logic() {
    _bmi = ((weight / (height * height)) * 10000);
    return _bmi.toStringAsFixed(1);
  }

  String commentry1() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String commentry2() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight . Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight . Good job !!';
    } else {
      return 'You have a lower than normal body weight . you can eat more';
    }
  }
}
