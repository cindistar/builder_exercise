import 'package:builder_exercise/agendamento.dart';
import 'package:builder_exercise/barbeiros.dart';
import 'package:builder_exercise/i_agendamento.dart';

class AgendamentoBuilder {
  late IAgendamento _agendamento;

  AgendamentoBuilder() {
    _agendamento = Agendamento(
      nomeCliente: '',
      dataHora: DateTime.now(),
      barbeiro: Barbeiros.monique,
      servicos: [],
    );
  }

  void buildAgendamento() {
    _agendamento.buildAgendamento();
  }
}
