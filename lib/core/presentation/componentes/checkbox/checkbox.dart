import 'package:flutter/material.dart';

class CheckBoxWiodget extends StatefulWidget {
  @override
  _CheckBoxWiodgetState createState() => _CheckBoxWiodgetState();
}

class _CheckBoxWiodgetState extends State<CheckBoxWiodget> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: checked,
            onChanged: (t) {
              setState(() {
                checked = !checked;
              });
            }),
        Text("Não exibir mais")
      ],
    );
  }
}
