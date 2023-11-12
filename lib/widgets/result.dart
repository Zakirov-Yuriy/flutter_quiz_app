import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final VoidCallback onClearState;

  const Result({
    Key? key, // Добавил ключ
    required this.count,
    required this.total,
    required this.onClearState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;
    if (0 <= count && count <= 3) {
      msg = 'Темная сторона не для тебя!';
      img = Image.asset('assets/images/bad.png');
    } else if (4 <= count && count <= 7) {
      msg = 'Совсем чуть чуть до цели!';
      img = Image.asset('assets/images/norm.png');
    } else {
      msg = 'Поздравляю ты нечесть во плати!';
      img = Image.asset('assets/images/good.png');
    }

    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15,
            spreadRadius: 0.0,
            offset: Offset(2.0, 5.0),
          ),
        ],
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: [
            Color(0xFF5337ff),
            Color(0xFF8131ff),
            Color(0xFFbd27ff),
          ],
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Text(
            'Верно ответил на $count из $total',
          ),
          Divider(
            color: Colors.white,
          ),
          FilledButton(
            onPressed: onClearState,
            child: const Text(
              'Пройти еще раз',
              style: TextStyle(fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
