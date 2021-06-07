import 'package:flutter/material.dart';
import 'package:questionarioapp/BotoesResposta.dart';
import 'package:questionarioapp/questoes.dart';

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
  int questaoatual = 0;

  void alterarQuestao() {
    setState(() {
      questaoatual++;
      print(questaoatual);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pergunta'),
      ),
      body: Center(
        child: Column(
          children: [
            TextQuestao(questoes[questaoatual]),
            BotoesResposta('Resposta 1'),
            BotoesResposta('Resposta 2'),
            BotoesResposta('Resposta 3'),
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
