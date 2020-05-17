import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'questions.dart';

class CharacterQuestions extends StatefulWidget {
  final String questionNum;
  final String optionA;
  final String optionB;
  final String characterClass;
  final List<Questions> questionList = Questions.getQuestions();
  CharacterQuestions({Key key, this.questionNum, this.optionA, this.optionB, this.characterClass}) : super(key: key);
  @override
  _CharacterQuestionsState createState() => _CharacterQuestionsState();
  }
  class _CharacterQuestionsState extends State<CharacterQuestions> {
//    List<double> classInput = [];
    CharacterQuestions questions = CharacterQuestions();
    int _currentQuestionIndex = Questions
        .getQuestions()
        .length;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Concept Quiz"),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Builder(
          builder: (BuildContext context) =>
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(14.4),
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid),
                        ),
                        height: 120.0,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('${CharacterQuestions().questionNum}'
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () =>
                              _checkAnswer(questions.optionA, context),
                          color: Colors.red.shade700,
                          child: Text("${questions.optionA}",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        RaisedButton(
                          onPressed: () =>
                              _checkAnswer(questions.optionB, context),
                          color: Colors.blue.shade700,
                          child: Text("${questions.optionB}",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
        ),
      );
    }

    _checkAnswer(String option, BuildContext context) {
      setState(() {
        String option;
        double classInput = 0;
        if (_currentQuestionIndex == 0 && option == questions.optionA) {
          classInput += 1.0;
          nextQuestion(classInput, context);
        } else {
          classInput += 2.0;
          nextQuestion(classInput, context);
        }
        questionaireDone(classInput, context);
        if (questionaireDone(classInput, context) == false) {

        }
      });
    }

    void nextQuestion(double classInput, BuildContext context) {
      if (_currentQuestionIndex == 0 && classInput == 1.0) {
        _currentQuestionIndex += 1;
      } else {
        _currentQuestionIndex += 2;
      }
    }

    bool questionaireDone(double classInput, BuildContext context) {
      if (_currentQuestionIndex == 1 && classInput == 1.1) {
        return true;
      } else {
        if (_currentQuestionIndex == 1 && classInput == 1.2) {
          return true;
        } else {
          if (_currentQuestionIndex == 2 && classInput == 2.1) {
            return true;
          } else {
            if (_currentQuestionIndex == 2 && classInput == 2.2) {
              return true;
            } else {
              return false;
            }
          }
        }
      }
    }
  }