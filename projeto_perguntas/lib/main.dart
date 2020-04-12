
import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp());

class PerguntaAppState extends State<PerguntaApp>{
  var perguntaSelecionada = 0;  

    void responder(){
    setState(() {
      perguntaSelecionada++;
    });
    perguntaSelecionada++;
    print(perguntaSelecionada); 
  }  

   @override
  Widget build(BuildContext context){

    final perguntas = [
      'Qual é a sua cor favorita?',
      'Gosta de gato ou cachorro?',
      'Mora em casa ou apartamento?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas') ,
        ),
        body: 
        Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
          ],
        ),
      )
    );
  }

}


class PerguntaApp extends StatefulWidget {

  PerguntaAppState createState() {
    return PerguntaAppState();
  }

}


