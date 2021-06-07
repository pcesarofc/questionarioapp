import 'package:flutter/material.dart';

class BotoesResposta extends StatelessWidget {
  final String texto;
  final void Function() onSelecao;

  BotoesResposta(this.texto, this.onSelecao);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onSelecao,
        child: Text(texto),
      ),
    );
  }
}
