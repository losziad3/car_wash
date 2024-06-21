import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:washit_project/screens/Servicesdetails.dart';
import 'package:washit_project/widgets/CustomStack.dart';
import 'package:washit_project/widgets/constant.dart';

class FullCleaning extends StatelessWidget {
  const FullCleaning({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Full Cleaning",style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),),
        centerTitle: true,
      ),
     body: ListView(
  children: [
    GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return  ServicesDetails();
        }),);
      },
        child: CustomStack()),
      SizedBox(height: screenHeight * 0.001),
      CustomStack(),
      SizedBox(height: screenHeight * 0.001),
      CustomStack(),
      SizedBox(height: screenHeight * 0.001),
      CustomStack(),
      SizedBox(height: screenHeight * 0.001),
  ],
),

    );
  }
}