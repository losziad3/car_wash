import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:car_wash/widgets/constant.dart';

class Review extends StatelessWidget {
  const Review({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(height: MediaQuery.of(context).size.height * 0.01), // 1% of the screen height
    Divider(
      thickness: MediaQuery.of(context).size.width * 0.005, // 0.5% of the screen width
    ),
    SizedBox(height: MediaQuery.of(context).size.height * 0.01), // 1% of the screen height
    Row(
      children: [
        
        SizedBox(width: MediaQuery.of(context).size.width * 0.02), // 1% of the screen width
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.007), // 0.7% of the screen height
          child: Text(
            "Dale Thiel",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: MediaQuery.of(context).size.width * 0.035, // 3.5% of the screen width
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.010, right: MediaQuery.of(context).size.width * 0.02), // 1.5% of the screen height, 2% of the screen width
          child: Text(
            "11 months ago",
            style: TextStyle(
              color: Color(0xFF797979),
              fontSize: MediaQuery.of(context).size.width * 0.03, // 3% of the screen width
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    ),
    SizedBox(height: MediaQuery.of(context).size.height * 0.01), // 1% of the screen height
    Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02), // 2% of the screen width
      child: Text(
        "orem Ipsum is simply dummy text of the printing and typesetting industry. standard dummy text ever ",
        style: TextStyle(
          color: Color(0xFF797979),
          fontSize: MediaQuery.of(context).size.width * 0.03, // 3% of the screen width
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02, top: MediaQuery.of(context).size.height * 0.005), // 2% of the screen width, 0.5% of the screen height
      child: Row(
        children: [
          SvgPicture.asset("svgs/Star 4.svg"),
          SizedBox(width: MediaQuery.of(context).size.width * 0.01),

          SvgPicture.asset("svgs/Star 4.svg"),
           SizedBox(width: MediaQuery.of(context).size.width * 0.01),

         SvgPicture.asset("svgs/Star 4.svg"),
           SizedBox(width: MediaQuery.of(context).size.width * 0.01),

          SvgPicture.asset("svgs/Star 4.svg"),
          SizedBox(width: MediaQuery.of(context).size.width * 0.01),

   SvgPicture.asset("svgs/Star 4.svg"),
   SizedBox(width: MediaQuery.of(context).size.width * 0.01),

          Text("5.0",style: TextStyle(
            color:Color(0xFF333333),

          ),),
        ],
      ),
    ),
  ],
);

  }
}
