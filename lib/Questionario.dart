import 'package:flutter/material.dart';
import 'BotoesResposta.dart';
import 'TextQuestoes.dart';

class Questionario extends StatelessWidget {
  final List<Map> perguntas;
  final int questaoAtual;
  final void Function() alterarquestao;

  Questionario(
      {required this.perguntas,
      required this.questaoAtual,
      required this.alterarquestao});

  bool get temPerguntaSelecionada {
    return questaoAtual < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String>? respostas =
        temPerguntaSelecionada ? perguntas[questaoAtual]['respostas'] : null;
    return Center(
      child: Column(
        children: [
          Container(height: 20),
          TextQuestao(perguntas[questaoAtual]['texto']),
          ...respostas!.map((t) => BotoesResposta(t, alterarquestao)).toList(),
        ],
      ),
    );
  }
}
