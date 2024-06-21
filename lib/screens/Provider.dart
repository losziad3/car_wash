import 'package:flutter/material.dart';
import 'package:washit_project/widgets/constant.dart';
import '../widgets/Custombutton.dart';

class provider extends StatelessWidget {
  const provider({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                width: 50,
                height: 700,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                  border: Border.all(color: Colors.black.withOpacity(0.1), width: 1),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "My Bookings:",
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Effortless",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Booking Control",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text("Lorem ipsum dolor sit amet, consectetur  ",style: TextStyle(color: Color(0xFF797979)),),
                    Text("adipiscing elit, sed do eiusmod tempor incididunt",style: TextStyle(color: Color(0xFF797979)),),
                    SizedBox(height: 400,),
                    Custombutton(text: "Continue", color: primarycolor,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
