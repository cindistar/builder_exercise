import 'package:builder_exercise/agendamento_builder.dart';
import 'package:builder_exercise/barbeiros.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

  final builder = AgendamentoBuilder()
    ..setName('Cindi')
    ..setDataHora(DateTime(2022, 10, 9))
    ..setBarbeiro(Barbeiros.claudinho)
    ..setServicos([]);

  final buildAgendamento = builder.build();
  print(buildAgendamento);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Builder Exercise',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(),
    );
  }
}
