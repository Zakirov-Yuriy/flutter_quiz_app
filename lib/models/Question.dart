// import "package:flutter/foundation.dart";

// class Question {
//   final String title;
//   final List<Map> answers;

//   Question({required this.title, required this.answers});
// }

// class QuestionData {
//   final _data = [];
//   List<Question> get questions => [..._data];

// }

class Question {
  final String title;
  final List<Map> answers;

  Question({required this.title, required this.answers});
}

class QuestionData {
  final _data = [];

  List<Question> get questions => [..._data];

  QuestionData() {
    // Добавим 5 вопросов с ответами
    _data.add(Question(
      title: "Какое главное устройство в компьютере?",
      answers: [
        {"option": "Процессор", "correct": true},
        {"option": "Жесткий диск", "correct": false},
        {"option": "Оперативная память", "correct": false},
        {"option": "Видеокарта", "correct": false},
        {"option": "Материнская плата", "correct": false},
      ],
    ));

    _data.add(Question(
      title: "Что означает HTML?",
      answers: [
        {"option": "HyperText Markup Language", "correct": true},
        {"option": "HyperTransfer Markup Language", "correct": false},
        {"option": "HighTech Machine Learning", "correct": false},
        {"option": "Home Tool Management Language", "correct": false},
        {"option": "Happy Turtle Mountain Language", "correct": false},
      ],
    ));

    _data.add(Question(
      title: "Какой самый язык программирования?",
      answers: [
        {"option": "Dart", "correct": false},
        {"option": "Python", "correct": false},
        {"option": "JavaScript", "correct": true},
        {"option": "Java", "correct": false},
      ],
    ));

    _data.add(Question(
      title: "Что означает акроним HTML?",
      answers: [
        {"option": "HyperText Markup Language", "correct": true},
        {"option": "HighTech Machine Learning", "correct": false},
        {"option": "Home Tool Management Language", "correct": false},
        {"option": "Happy Turtle Mountain Language", "correct": false},
      ],
    ));

    _data.add(Question(
      title: "Какая операционная система разработана компанией Apple?",
      answers: [
        {"option": "Windows", "correct": false},
        {"option": "Linux", "correct": false},
        {"option": "iOS", "correct": true},
        {"option": "Android", "correct": false},
      ],
    ));
  }

  // Добавьте еще три вопроса по аналогии с вышеприведенными примерами
  // ...

  // Вы можете продолжить добавлять вопросы по своему усмотрению
}
