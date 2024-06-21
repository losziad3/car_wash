import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:washit_project/screens/Login.dart';
import 'package:washit_project/screens/Loginprovider.dart';
import 'package:washit_project/widgets/ButtonProvider2.dart';
import 'package:washit_project/widgets/Buttonprovider.dart';
import 'package:washit_project/widgets/Custombutton.dart';
import 'package:washit_project/widgets/buttonforlocationmanually.dart';
import 'package:washit_project/widgets/constant.dart';

class Provider extends StatelessWidget {
  const Provider({Key? key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
 double height781 = MediaQuery.of(context).size.height *1; 
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Wrap SvgPicture.asset inside a Stack
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: mediaQuery.size.width * 0.4),
                child: SvgPicture.asset("svgs/iPhone14Pro.svg"),
              ),
              SizedBox(height: height781,),
              Positioned(
                 left: 0,
                right: 0,
                bottom: 10,
                child: ClipPath(
                   clipper: ContainerClipper(),
                  child: Container(
                    decoration: BoxDecoration(
                     
                      border: Border.all(color: Colors.black.withOpacity(0.1), width: 1),
                      color: Colors.white,
                    ),
                    
                    child: Column(
                      children: [
                       SizedBox(
  height: MediaQuery.of(context).size.height * 0.146, // Adjust the multiplier as needed
),

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
                     SizedBox(height: MediaQuery.of(context).size.height * 0.013,),
                        Text("Lorem ipsum dolor sit amet, consectetur  ",style: TextStyle(color: Color(0xFF797979)),),
                        Text("adipiscing elit, sed do eiusmod tempor incididunt",style: TextStyle(color: Color(0xFF797979)),),
                        SizedBox(  height: MediaQuery.of(context).size.height * 0.026,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return Login();
                            }),);
                          },
                          child: CustombuttonPro(text: "Continue", color: primarycolor,)),
                              SizedBox(  height: MediaQuery.of(context).size.height * 0.010,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return LoginProvider();
                            }),);
                          },
                          child: Custombuttonlprovider(text: "Continue as provider",)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
class ContainerClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var path=Path();
    path.lineTo(0,0);
  var firststart=Offset(size.width*0.22, 100);
  var firstsend=Offset(size.width*0.6, 80);
  path.quadraticBezierTo(firststart.dx, firststart.dy, firstsend.dx, firstsend.dy);
    var secondstart=Offset(size.width*0.75, 80);
  var secondsend=Offset(size.width, 0);
   path.quadraticBezierTo(secondstart.dx, secondstart.dy, secondsend.dx, secondsend.dy);
   path.lineTo(size.width, 0);
   path.lineTo(size.width, size.height);
   path.lineTo(0, size.height);
   path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
