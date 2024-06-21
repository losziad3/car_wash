import 'package:flutter/material.dart';
import 'package:car_wash/widgets/Customcontainer.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate the screen width and height using MediaQuery
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Services",
          style: TextStyle(
            fontSize: screenWidth * 0.04, // Adjusted font size based on screen width
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01), // Dynamic vertical padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomContainer(
                  Text1: "Exterior Cleaning",
                  Text2: "",
                  iconPath: "svgs/EXTERIOR.svg",
                ),
                CustomContainer(
                  Text1: "Interior Cleaning",
                  Text2: "",
                  iconPath: "svgs/inter.svg",
                ),
                CustomContainer(
                  Text1: "Full Cleaning",
                  Text2: "",
                  iconPath: "svgs/full.svg",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01), // Dynamic vertical padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomContainer(
                  Text1: "Wash & Polish",
                  Text2: "",
                  iconPath: "svgs/wash.svg",
                ),
                CustomContainer(
                  Text1: "Engine Bay",
                  Text2: "",
                  iconPath: "svgs/engine.svg",
                ),
                CustomContainer(
                  Text1: "Tire Dressing",
                  Text2: "",
                  iconPath: "svgs/tire.svg",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01), // Dynamic vertical padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomContainer(
                  Text1: "Car Spray",
                  Text2: "",
                  iconPath: "svgs/carspray.svg",
                ),
                CustomContainer(
                  Text1: "Odor",
                  Text2: "",
                  iconPath: "svgs/odor.svg",
                ),
                CustomContainer(
                  Text1: "Other",
                  Text2: "",
                  iconPath: "svgs/water-sharp-svgrepo-com 1.svg",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
