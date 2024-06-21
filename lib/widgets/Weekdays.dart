import 'package:flutter/material.dart';

class Weekday extends StatelessWidget {
  const Weekday({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return     Row(
                          children: [
                          Text(
                          text,
                          style:
                              TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xFF797979), ),
                              
                        ),
                        Spacer(flex: 1,),
                        Padding(
                           padding: EdgeInsets.only(
    right: MediaQuery.of(context).size.width * 0.05, // Sets padding to 5% of the screen width
  ),
                          child: Text("00:00 - 00:00",style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),),
                        )
                        ],
                        );
                        
  }
}