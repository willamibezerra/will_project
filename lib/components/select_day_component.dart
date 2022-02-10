import 'package:flutter/material.dart';
import 'package:will_project/widgets/check_box_widget.dart';

class SelectDayComponent extends StatelessWidget {
  const SelectDayComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTitle(context),
        GridView.count(
          childAspectRatio: 10 / 2,
          crossAxisCount: 2,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          mainAxisSpacing: 3,
          children: const [
            CheckBoxWidget(
              text: "Segunda",
            ),
            CheckBoxWidget(
              text: "Quinta",
            ),
            CheckBoxWidget(
              text: "Terça",
            ),
            CheckBoxWidget(
              text: "Sexta",
            ),
            CheckBoxWidget(
              text: "Quarta",
            ),
          ],
        ),
      ],
    );
  }

  RichText buildTitle(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        style: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
        children: const [
          TextSpan(
              text: 'Selecione os dias ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
            text: 'em que você gostaria de ser atendido',
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
