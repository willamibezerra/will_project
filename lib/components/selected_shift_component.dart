import 'package:flutter/material.dart';
import 'package:will_project/widgets/check_box_widget.dart';

class SelectedShifiComponent extends StatelessWidget {
  const SelectedShifiComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildShift(context),
        Row(
          children: const [
            CheckBoxWidget(
              text: "Manhã",
            ),
            SizedBox(
              width: 20,
            ),
            CheckBoxWidget(
              text: "Tarde",
            ),
          ],
        )
      ],
    );
  }

  RichText buildShift(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        style: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
        children: const [
          TextSpan(
            text: "Em ",
            style: TextStyle(
              color: Color(
                0xff646464,
              ),
            ),
          ),
          TextSpan(
              text: 'qual turno ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
            text: 'você tem preferência em ser atendido(a)?',
            style: TextStyle(
              color: Color(
                0xff646464,
              ),
            ),
          )
        ],
      ),
    );
  }
}
