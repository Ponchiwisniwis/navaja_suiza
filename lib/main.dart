import 'package:flutter/material.dart';
import 'package:navaja_suiza/result.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////// MyApp()    ////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': '¿Cual es tu animal favorito?',
      'answers': [
        {'text': 'Conejo', 'score': 10},
        {'text': 'Cabra', 'score': 7},
        {'text': 'Pato', 'score': 5},
        {'text': 'Perro', 'score': 3}
      ],
    },
    {
      'questionText': '¿Cual es tu color favorito?',
      'answers': [
        {'text': 'Negro', 'score': 10},
        {'text': 'Blacno', 'score': 7},
        {'text': 'Naranja', 'score': 5},
        {'text': 'Azul', 'score': 3}
      ],
    },
    {
      'questionText': '¿Cual es tu JoJo favorito?',
      'answers': [
        {'text': 'Jonatan', 'score': 10},
        {'text': 'Joseph', 'score': 7},
        {'text': 'Jotaro', 'score': 5},
        {'text': 'Josuke', 'score': 3}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////// _answerQuestion()    //////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('No hay mas preguntas');
    } else {
      print('asdasdasdasd');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi primera App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(
                resultScore: _totalScore, resetHandler: _resetQuiz), //detalle  si se borra resultScore
      ),
    );
  }
}
