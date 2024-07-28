class CalculatorBrain{
  final double height;
  final double weight;
  late final double _bmi;

  CalculatorBrain({required this.weight, required this.height});

  String getBMI(){
      _bmi = ((weight / (height * height)) * 10000);

      return _bmi.toStringAsFixed(1);
  }

  String getNormal(){
    if(_bmi>=30){
      return "Obese";
    }
    else if(_bmi>=25){
      return "Overweight";
    }
    else if(_bmi>=18.5){
      return "Normal";
    }
    else{
      return 'Underweight';
    }
  }

  String getRange(){
    if(_bmi>=30){
      return "30.0 and Above";
    }
    else if(_bmi>=25){
      return "25.0—29.9";
    }
    else if(_bmi>=18.5){
      return "18.5—24.9";
    }
    else{
      return 'Below 18.5';
    }
  }

  String getCommentary(){
    if(_bmi>=30){
      return "You have a long road ahead of you, it is gonna be hard, but it "
          "will worth it.( •̀ ω •́ )✧";
    }
    else if(_bmi>=25){
      return "Start healthy life-style before it is too late!＜（＾－＾）＞";
    }
    else if(_bmi>=18.5){
      return "Keep going, there is always room to grow!ヾ(≧へ≦)〃";
    }
    else{
      return 'You should care about yourself more, eat good food(✿◡‿◡)';
    }
  }


}