import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Visor extends StatelessWidget {
  final String texto;
  const Visor(this.texto, {super.key});
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1, // ocupar toda a altura da tela
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 79, 77, 77), // cor de fundo
          borderRadius: BorderRadius.circular(10), // bordas arredondadas
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0), 
              child: AutoSizeText(
                texto,
                minFontSize: 20,
                maxFontSize: 80,
                maxLines: 1,
                textAlign: TextAlign.end,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                  fontSize: 80,
                  color: Color.fromRGBO(211, 211, 211, 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
