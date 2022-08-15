import 'package:builder_exercise/barbeiros.dart';
import 'package:builder_exercise/i_agendamento.dart';
import 'package:builder_exercise/servicos.dart';

class Agendamento implements IAgendamento {
  final String nomeCliente;
  final String? telefone;
  final Barbeiros barbeiro;
  final List<Servicos> servicos;
  final DateTime dataHora;

  Agendamento({
    required this.nomeCliente,
    this.telefone,
    required this.barbeiro,
    required this.servicos,
    required this.dataHora,
  });
  
  @override
  void buildAgendamento() {
    // TODO: implement buildAgendamento
  }
}