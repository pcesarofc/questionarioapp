import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 20,
          ),
          Text(
            'Parabéns',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ],
      ),
    );
  }
}
