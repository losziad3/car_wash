import 'package:flutter/material.dart';
import 'package:washit_project/core/theming/styles.dart';
class CheckBox extends StatefulWidget {

  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked = false ;

  @override
  Widget build(BuildContext context) {
    return           Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
          activeColor: Colors.blue,
        ),
        const Text("Agree with "),
        GestureDetector(
          onTap: () {},
          child:  Text(
            "Terms & Condition",
            style: AppStyles.font14Blue600
          ),
        ),
      ],
    );
  }
}