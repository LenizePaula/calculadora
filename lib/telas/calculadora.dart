import 'package:flutter/material.dart';
import '../../componentes/visor.dart';
import '../../componentes/teclado.dart';
import '../modelos/memoria.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
    State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final Memoria memoria = Memoria();

  _pressionado(String comando) {
    setState(() {
      memoria.tratarDigito(comando);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        padding: const EdgeInsets.all(8.0),
        color: const Color.fromARGB(255, 243, 239, 239), 
        child: Column(
          children: <Widget>[
            Visor(memoria.valorNoVisor),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 79, 77, 77), // cor de fundo
                borderRadius: BorderRadius.circular(20), // bordas arredondadas
              ),
              padding: const EdgeInsets.all(15.0), // Opcional: adicione padding se necessário
              child: Teclado(_pressionado), // Teclado fica dentro deste Container
            )
          ],
        ),),);
  }
}

