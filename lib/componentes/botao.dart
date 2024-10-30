import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  static const corPadrao = Colors.white;
  static const corOperacao = Colors.black;

  final String texto;
  final bool duplo;
  final Color cor;
  final void Function(String) callback;

  const Botao({
    super.key,
    required this.texto,
    this.duplo = false,
    this.cor = corPadrao,
    required this.callback,
  });

   const Botao.operacao({
    super.key,
    required this.texto,
    this.duplo = false,
    this.cor = corOperacao,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    // Define a cor do texto com base na cor de fundo do botão
    final textColor = cor == corOperacao ? Colors.white : Colors.black;
    return Expanded(
        flex: duplo ? 2 : 1,
        child: CupertinoButton(
            color: cor,
            onPressed: () => callback(texto),
            child: Text(
              texto,
              style: TextStyle(
                color: textColor,
                fontSize: 32,
                fontWeight: FontWeight.w100,
              ),
            )));
  }
 }

