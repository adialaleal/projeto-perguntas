import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;

  final void Function() onTouched;

  Resposta(this.resposta, this.onTouched);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(0.6),
      child: RaisedButton(
        color: Colors.blueAccent,
        textColor: Colors.white,
        child: Text(resposta),
        onPressed: onTouched,
      ),
    );
  }
}
