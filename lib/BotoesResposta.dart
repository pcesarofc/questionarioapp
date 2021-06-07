import 'package:flutter/material.dart';

class BotoesResposta extends StatelessWidget {
  final String texto;

  BotoesResposta(this.texto);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      child: Text(texto),
    );
  }
}
