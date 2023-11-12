import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final index;
  final questionData;
  final onChangeAnswer;
  const Quiz({super.key, this.index, this.questionData, this.onChangeAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            questionData.questions[index].title,
          ),
        ),
        ...questionData.questions[index].answers
            .map(
              (value) => Answer(
                title: value['option'] ?? '',
                isCorrect: value.containsKey('isCorrect') ? true : false,
                onChangeAnswer: onChangeAnswer,
              ),
            )
            .toList(),
      ],
    );
  }
}
