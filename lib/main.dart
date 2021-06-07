import 'package:flutter/material.dart';
import 'package:questionarioapp/BotoesResposta.dart';
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

class MyHomePageState extends State<MyHomePage> {
  var questaoatual = 0;

  void alterarQuestao() {
    setState(() {
      questaoatual++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Map> perguntas = [
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

    List<String> respostas = perguntas[questaoatual]['respostas'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Pergunta'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(height: 20),
            TextQuestao(perguntas[questaoatual]['texto']),
            ...respostas.map((t) => BotoesResposta(t, alterarQuestao)).toList(),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}
