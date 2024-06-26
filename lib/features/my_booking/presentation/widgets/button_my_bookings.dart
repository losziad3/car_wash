import 'package:flutter/material.dart';

class ButtonsMyBookings extends StatelessWidget {
  final String textButton1;
  final String textButton2;
  const ButtonsMyBookings({
    super.key, required this.textButton1, required this.textButton2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {

          },
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.blue,
            side: const BorderSide(color: Colors.blue),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Text(textButton1),
        ),
        ElevatedButton(
          onPressed: () {

          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child:  Text(textButton2,style: const TextStyle(color: Colors.white),),
        ),
      ],
    );
  }
}
