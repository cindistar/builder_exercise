import 'package:builder_exercise/agendamento.dart';
import 'package:builder_exercise/barbeiros.dart';
import 'package:builder_exercise/servicos.dart';

class AgendamentoBuilder {
  String name = '';
  DateTime dataHora = DateTime.now();
  String? telefone = '';
  Barbeiros? barbeiro = Barbeiros.claudinho;
  List<Servicos>? servicos = [];

  AgendamentoBuilder();

  void setName(String name) {
    if (name.length >= 3) {
      this.name = name;
    }
  }

  void setDataHora(DateTime dataHora) {
    var dateEnd = DateTime.now();
    if (dataHora.isBefore(dateEnd)) {
      return;
    }
    this.dataHora = dataHora;
  }

  void setBarbeiro(Barbeiros barbeiro) {
    if (barbeiro != Barbeiros.semPreferencia) {
      this.barbeiro = barbeiro;
    }
  }

  void setServicos(List<Servicos> servicos) {
    if (servicos.isEmpty) {
      return;
    }
    this.servicos = servicos;
  }

  Agendamento build() {
    if (name.length < 3) {
      throw Exception('O nome tem que ter no mínimo 3 letras!');
    }

    if (dataHora.isBefore(DateTime.now())) {
      throw Exception('A data informada não pode ser inferior a data de hoje!');
    }

    if (servicos!.isEmpty) {
      throw Exception('Selecione pelo menos 1 serviço!');
    }

    return Agendamento(
      nomeCliente: name,
      barbeiro: barbeiro!,
      servicos: servicos!,
      dataHora: dataHora,
    );
  }
}
