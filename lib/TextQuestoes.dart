import 'package:flutter/material.dart';

class TextQuestao extends StatelessWidget {
  final String texto;

  TextQuestao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}
