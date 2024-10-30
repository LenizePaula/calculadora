import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'telas/calculadora.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const Calculadora());
}
