import 'package:flutter/material.dart';

class HeadWidget extends StatelessWidget {
  const HeadWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Pré-agendamento de consulta",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Selecione as opções de data que você gostaria de ser atendido."
          " Nós entraremos em contato depois para confirmar o seu atendimento.",
        ),
      ],
    );
  }
}
