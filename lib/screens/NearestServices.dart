import 'package:flutter/material.dart';
import 'package:washit_project/widgets/CustomStack.dart';

class NearestServices extends StatelessWidget {
  const NearestServices({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
     double dynamicHeight = screenHeight * 0.05; 

    return Scaffold(

            appBar: AppBar(
        title: Text("Nearest Services Provider",style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),),
        centerTitle: true,
      ),
       body: ListView(
  children: [
    CustomStack(),
  SizedBox(height: screenHeight * 0.001),
    CustomStack(),
SizedBox(height: screenHeight * 0.001),    CustomStack(),
 SizedBox(height: screenHeight * 0.001),
    CustomStack(),
    SizedBox(height: screenHeight * 0.001),
  ],
),
    );
  }
}