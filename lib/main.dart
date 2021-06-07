import 'package:flutter/material.dart';
import 'package:questionarioapp/BotoesResposta.dart';
import 'package:questionarioapp/Questionario.dart';
import 'package:questionarioapp/Resultado.dart';
import 'TextQuestoes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

final List<Map> _perguntas = const [
  {
    'texto': 'Qual é a sua cor favorita?',
    'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
  },
  {
    'texto': 'Qual é o seu animal favorito?',
    'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
  },
  {
    'texto': 'Qual é o seu instrutor favorito?',
    'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
  }
];

class MyHomePageState extends State<MyHomePage> {
  var _questaoatual = 0;

  void _alterarquestao() {
    setState(() {
      _questaoatual++;
    });
  }

  bool get temPerguntaSelecionada {
    return _questaoatual < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pergunta'),
      ),
      body: temPerguntaSelecionada
          ? Questionario(
              perguntas: _perguntas,
              questaoAtual: _questaoatual,
              alterarquestao: _alterarquestao)
          : Resultado(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}
