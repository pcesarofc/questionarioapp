import 'package:flutter/material.dart';
import 'package:questionarioapp/Questionario.dart';
import 'package:questionarioapp/Resultado.dart';

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

final List<Map<String, Object>> _perguntas = [
  {
    'texto': 'Qual é a sua cor favorita?',
    'respostas': [
      {'texto': 'Preto', 'nota': '10'},
      {'texto': 'Vermelho', 'nota': '5'},
      {'texto': 'Verde', 'nota': '3'},
      {'texto': 'Branco', 'nota': '1'}
    ],
  },
  {
    'texto': 'Qual é o seu animal favorito?',
    'respostas': [
      {'texto': 'Coelho', 'nota': '10'},
      {'texto': 'Cobra', 'nota': '5'},
      {'texto': 'Elefante', 'nota': '3'},
      {'texto': 'Leão', 'nota': '1'},
    ],
  },
  {
    'texto': 'Qual é o seu instrutor favorito?',
    'respostas': [
      {'texto': 'Maria', 'nota': 10},
      {'texto': 'João', 'nota': 5},
      {'texto': 'Leo', 'nota': 3},
      {'texto': 'Pedro', 'nota': 1},
    ],
  }
];

class MyHomePageState extends State<MyHomePage> {
  var _questaoatual = 0;
  var _nota;

  void _alterarquestao(String nota) {
    setState(() {
      _questaoatual++;
      _nota = nota;
      print(_nota);
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
