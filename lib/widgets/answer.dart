import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String title;
  final isCorrect;
  final Function onChangeAnswer;
  const Answer(
      {super.key,
      required this.title,
      this.isCorrect,
      required this.onChangeAnswer});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChangeAnswer(isCorrect),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 5,
        ),
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10.0,
              offset: Offset(1.0, 1.0),
            ),
          ],
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [
              Color(0xFF5337ff),
              Color(0xFF8131ff),
              Color(0xFFbd27ff),
            ],
          ),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
