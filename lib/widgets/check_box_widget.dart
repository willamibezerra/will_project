import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  final String text;
  const CheckBoxWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _ChequeBoxState();
}

class _ChequeBoxState extends State<CheckBoxWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          value: isChecked,
          onChanged: (bool? value) {
            setState(
              () {
                isChecked = value!;
              },
            );
          },
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          widget.text,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
