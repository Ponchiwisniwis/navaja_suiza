import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result({this.resultScore, this.resetHandler});

  String get resultPhrase {
    var resultText = 'Lo lograste';
    if (resultScore <= 8) {
      resultText = 'Mas suerte a la siguiente';
    } else if (resultScore <= 12) {
      resultText = 'Eres bueno';
    } else {
      resultText = 'Eres pesimo';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
          FlatButton(child: Text('Reiniciar'),textColor: Colors.blue, onPressed: resetHandler,)
    ]));
  }
}
