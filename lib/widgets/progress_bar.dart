import 'package:flutter/material.dart';

class ProgrresBar extends StatelessWidget {
  final icons;
  final count;
  final total;
  ProgrresBar({super.key, this.icons, this.count, this.total});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              '$count - $total',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(width: 10),
          ...icons,
        ],
      ),
    );
  }
}
