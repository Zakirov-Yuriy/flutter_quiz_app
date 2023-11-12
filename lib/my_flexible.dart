import 'package:flutter/material.dart';

class MyFlex extends StatelessWidget {
  const MyFlex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Верстка'),
      ),
      body: Container(
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BiggerColorBox(),
            Flexible(fit: FlexFit.tight, flex: 1, child: ColorBox()),
            Flexible(fit: FlexFit.tight, flex: 2, child: ColorBox()),
          ],
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  const ColorBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(color: Colors.redAccent, border: Border.all()),
    );
  }
}

class BiggerColorBox extends StatelessWidget {
  const BiggerColorBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 82, 255, 122), border: Border.all()),
    );
  }
}
