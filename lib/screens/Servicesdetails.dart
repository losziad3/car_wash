import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:car_wash/screens/Servicesbar.dart';
import 'package:car_wash/screens/addReviews.dart';
import 'package:car_wash/widgets/Custombutton.dart';
import 'package:car_wash/widgets/Gallery.dart';
import 'package:car_wash/widgets/Reviews.dart';
import 'package:car_wash/widgets/Weekdays.dart';
import 'package:car_wash/widgets/constant.dart';

class ServicesDetails extends StatefulWidget {
  const ServicesDetails({Key? key});

  @override
  State<ServicesDetails> createState() => _ServicesDetailsState();
}

class _ServicesDetailsState extends State<ServicesDetails> {
  List<String> tabs = [
    "About",
    ' Services ',
    "Gallery",
    "Review",
  ];
  int current = 0;
  double Changepostionline() {
    switch (current) {
      case 0:
        return 0;
      case 1:
        return 110;
      case 2:
        return 230;
      case 3:
        return 330;

      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
  
      final double screenWidth = MediaQuery.of(context).size.width;
        final double screenHeight = MediaQuery.of(context).size.height;
    final buttonWidth = screenWidth * 0.9; // Width as 80% of the screen width
    final buttonHeight = screenHeight * 0.07; 
    return Scaffold(
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                                        Container(
  width: double.infinity, 
  //height: 300,// Take all the width of the screen
  child: Image.asset(
    'svgs/image.png',
    fit: BoxFit.fill, // Fill the entire container
  ),
),

                  Positioned(
                    top: 7, // Adjust this value to position the icon vertically
                    right: 0.01 *
                        MediaQuery.of(context)
                            .size
                            .width, // Position based on 10% of screen width
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset("svgs/frame.svg"),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8, // Adjust this value to position the icon vertically
                    right: 0.09 *
                        MediaQuery.of(context)
                            .size
                            .width, // Position based on 30% of screen width
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, top: 20),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset("svgs/share.svg"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.03, // Set height to 2% of the screen height
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F9FB),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 0.05 * MediaQuery.of(context).size.width,
                      ), // Adjust left and right padding based on screen width
                      child: Text(
                        "Car Washing",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: primarycolor,
                        ),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: Colors.yellow,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 0.02 *
                            MediaQuery.of(context)
                                .size
                                .width), // Adjust right padding based on screen width
                    child: Text(
                      "4.8 (365 reviews)",
                      style: TextStyle(
                        color: Color(0xFF797979),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.02, // Set height to 2% of the screen height
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: 0.4 *
                        MediaQuery.of(context)
                            .size
                            .width), // Adjust left padding based on screen width
                child: Text(
                  "ProGlow Auto Spa",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.02, // Set height to 2% of the screen height
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: 0.3 *
                        MediaQuery.of(context)
                            .size
                            .width), // Adjust left padding based on screen width
                child: Text(
                  "1012 Ocean Avenue, New York, USA",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF797979),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.01, // Set height to 2% of the screen height
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.06,
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.05,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height:
                                        MediaQuery.of(context).size.height * 0.04,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: tabs.length,
                                      physics: const BouncingScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              current = index;
                                            });
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: index == 0 ? 40 : 50,
                                              top: 7,
                                            ),
                                            child: Text(
                                              tabs[index],
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: current == index
                                                    ? Colors.blue
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                // Adjust AnimatedPositioned to align with the divider
                                AnimatedPositioned(
                                  bottom: MediaQuery.of(context).size.height *
                                      0.002, // Adjust bottom position for alignment
                                  left: Changepostionline(),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                  duration: Duration(milliseconds: 500),
                                  child: AnimatedContainer(
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    margin: EdgeInsets.only(left: 5),
                                    duration: Duration(milliseconds: 500),
                                    width: MediaQuery.of(context).size.width * 0.2,
                                    height:
                                        MediaQuery.of(context).size.height * 0.007,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(32),
                                      color: primarycolor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              IndexedStack(
                index: current,
                children: [
                  // Content for 'About' tab
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height *
                              0.01, // This sets the height to 1% of the screen height
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 0.01 *
                                  MediaQuery.of(context)
                                      .size
                                      .width), // Adjust left padding based on screen width
                          child: Row(
                            children: [
                              SizedBox(
                                // Use MediaQuery to calculate the width as a percentage of the screen's width
                                width: MediaQuery.of(context).size.width *
                                    0.04, // This sets the width to 4% of the screen width
                              ),
                              // Add some space between the avatar and the text
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Robert Fox",
                                    style: TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.w600),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 0.0 *
                                            MediaQuery.of(context)
                                                .size
                                                .width), // Adjust left padding for the text
                                    child: Text(
                                      "Service Provider",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF797979),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(flex: 1),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 0.05 *
                                        MediaQuery.of(context)
                                            .size
                                            .width), // Adjust right padding for the call icon
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Color(0xFFF1F9FB),
                                  child: SvgPicture.asset("svgs/call.svg"),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          // Calculate the height as a percentage of the screen's total height using MediaQuery
                          height: MediaQuery.of(context).size.height *
                              0.02, // This sets the height to 2% of the screen height
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 0.05 *
                                  MediaQuery.of(context)
                                      .size
                                      .width), // Adjust left padding based on screen width
                          child: Text(
                            "Working Hours",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Divider(
                         color: Colors.grey[300],
                          endIndent: 0.07 * MediaQuery.of(context).size.width,
                          indent: 0.05 *
                              MediaQuery.of(context)
                                  .size
                                  .width, // Adjust end indent based on screen width
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height *
                              0.005, // Sets height to 0.5% of screen height
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 22),
                          child: Column(
                            children: [
                              Weekday(text: "Monday"),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    0.01, // Sets height to 1% of screen height
                              ),
                              Weekday(text: "Tuesday"),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    0.01, // Sets height to 1% of screen height
                              ),
                              Weekday(text: "Wednesday"),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    0.01, // Sets height to 1% of screen height
                              ),
                              Weekday(text: "Thursday"),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    0.01, // Sets height to 1% of screen height
                              ),
                              Weekday(text: "Friday"),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    0.01, // Sets height to 1% of screen height
                              ),
                              Weekday(text: "Saturday"),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    0.01, // Sets height to 1% of screen height
                              ),
                              Weekday(text: "Sunday"),
                            ],
                          ),
                        ),
                       SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    0.01, // Sets height to 1% of screen height
                              ),
                        Padding(
                           padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05, // Sets padding to 5% of the screen width on both sides
            ),
                          child: Row(
                            children: [
                              Text(
                                "Address",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                              GestureDetector(
                                onTap: () {
                                  // Handle view on map action
                                },
                                child: Text(
                                  "View on Map",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: primarycolor),
                                ),
                              ),
                            ],
                          ),
                        ),
            Divider(
            color: Color(0xFFA8A8A8), // A lighter shade of gray (closer to white)
            endIndent: MediaQuery.of(context).size.width * 0.05, // Sets the space at the end of the divider to 5% of the screen width
            indent: MediaQuery.of(context).size.width * 0.05
            ),
          
                        Padding(
                         padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05, // Sets padding to 5% of the screen width on the left side
            ),
                          child: Row(
                            children: [
                              SvgPicture.asset("svgs/smalllocation.svg"),
                             SizedBox(
            width: MediaQuery.of(context).size.width * 0.02, // Adjust the percentage as needed
          ),
          
                              Expanded(
                                child: Text(
                                  "1012 Ocean Avenue, New York, USA",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      
                     SizedBox(
            height: MediaQuery.of(context).size.height * 0.005, // Adjust height as a percentage of screen height
          ),
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05), // Adjust left padding as a percentage of screen width
            child: Image.asset("svgs/map.png"),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02, // Adjust height as a percentage of screen height
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.005, // Adjust height as a percentage of screen height
          ),
          
          
          Container(
            
            height: MediaQuery.of(context).size.height * 0.10, // Use MediaQuery for height (12% of screen height)
            decoration: BoxDecoration(
            
              border: Border.all(color: Colors.black.withOpacity(0.1), width: 1), // Adjust border color and width as needed
          borderRadius: BorderRadius.circular(16),
            ),
                       child: 
                       Row (
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: buttonWidth, // Use calculated width
                              height: buttonHeight, // Use calculated height
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color:primarycolor,
                                
                              ),
                              child: Center(
                                child: Text(
                                  "Book Services Now",
                                  style: TextStyle(
                                    color:Colors.white,
                                    fontSize: 16
                                  ),
                                ),
                              ),
                            ),
                         ],
                        ),
          ),
                      ],
                    ),
                  ),
                  // Content for 'Services' tab
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.04),
                      border: Border.all(
                        color: const Color(0xFFF1F9FB),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                         padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04),
                          child: Text(
                            'Services',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Servicesbar(
                          text: "Exterior Cleaning",
                          svgAssetName: "svgs/ext.svg",
                        ),
                      SizedBox(
            height: MediaQuery.of(context).size.height * 0.02, // Adjust height as a percentage of screen height
          ),
          
                        Servicesbar(
                          text: "Interior Cleaning",
                          svgAssetName: "svgs/inter.svg",
                        ),
                        SizedBox(
            height: MediaQuery.of(context).size.height * 0.02, // Adjust height as a percentage of screen height
          ),
          
                        Servicesbar(
                          text: "Full Cleaning",
                          svgAssetName: "svgs/full.svg",
                        ),
                        SizedBox(
            height: MediaQuery.of(context).size.height * 0.02, // Adjust height as a percentage of screen height
          ),
          
                        Servicesbar(
                          text: "Wash & Polish",
                          svgAssetName: "svgs/wash.svg",
                        ),
                        SizedBox(
            height: MediaQuery.of(context).size.height * 0.02, // Adjust height as a percentage of screen height
          ),
          
                        Servicesbar(
                          text: "Engine Bay Cleaning",
                          svgAssetName: "svgs/engine.svg",
                        ),
                       SizedBox(
            height: MediaQuery.of(context).size.height * 0.02, // Adjust height as a percentage of screen height
          ),
          
                        Servicesbar(
                          text: "Tire Dressing",
                          svgAssetName: "svgs/tire.svg",
                        ),
                        SizedBox(
            height: MediaQuery.of(context).size.height * 0.02, // Adjust height as a percentage of screen height
          ),
          
                        Servicesbar(
                          text: "Car Spray",
                          svgAssetName: "svgs/carspray.svg",
                        ),
                        SizedBox(
            height: MediaQuery.of(context).size.height * 0.02, // Adjust height as a percentage of screen height
          ),
          
                        Servicesbar(
                          text: "Odor",
                          svgAssetName: "svgs/odor.svg",
                        ),
                        SizedBox(
            height: MediaQuery.of(context).size.height * 0.02, // Adjust height as a percentage of screen height
          ),
          
                        Servicesbar(
                            text: "Others",
                            svgAssetName: "svgs/water-sharp-svgrepo-com 1.svg"),
                       SizedBox(
            height: MediaQuery.of(context).size.height * 0.02, // Adjust height as a percentage of screen height
          ),
          
                        Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.10, // Use MediaQuery for height (12% of screen height)
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black.withOpacity(0.1), width: 1), // Adjust border color and width as needed
              borderRadius:BorderRadius.circular(16)
            ),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: buttonWidth, // Use calculated width
                              height: buttonHeight, // Use calculated height
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color:primarycolor,
                              ),
                              child: Center(
                                child: Text(
                                  "Book Services Now",
                                  style: TextStyle(
                                    color:Colors.white,
                                    fontSize: 16
                                  ),
                                ),
                              ),
                            ),
                         ],
                        ),
          ),
                      ],
                    ),
                  ),
                  // Content for 'Gallery' tab
                  Container(
                     margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.04, // Adjust left margin as a percentage of screen width
              top: MediaQuery.of(context).size.height * 0.01, // Adjust top margin as a percentage of screen height
            ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.025),
                              child: Text(
                                "Gallery",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14),
                              ),
                            ),
                            SizedBox(
            width: MediaQuery.of(context).size.width * 0.01, // Adjust width as a percentage of screen width
          ),
          
                            Text(
                              "(25)",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: primarycolor),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Padding(
                             padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.04), 
                              child: Text(
                                "View All",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: primarycolor),
                              ),
                            ),
                          ],
                        ),
                       SizedBox(
            height: MediaQuery.of(context).size.height * 0.02, // Adjust height as a percentage of screen height
          ),
          
                        Gallery(),
                        SizedBox(
            height: MediaQuery.of(context).size.height * 0.02, // Adjust height as a percentage of screen height
          ),
          
                        Gallery(),
                       SizedBox(
            height: MediaQuery.of(context).size.height * 0.02, // Adjust height as a percentage of screen height
          ),
          
                        Gallery(),
                      SizedBox(
            height: MediaQuery.of(context).size.height * 0.02, // Adjust height as a percentage of screen height
          ),
          
                      Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.10, // Use MediaQuery for height (12% of screen height)
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black.withOpacity(0.1), width: 1), // Adjust border color and width as needed
              borderRadius: BorderRadius.circular(16)
            ),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: buttonWidth, // Use calculated width
                              height: buttonHeight, // Use calculated height
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color:primarycolor,
                              ),
                              child: Center(
                                child: Text(
                                  "Book Services Now",
                                  style: TextStyle(
                                    color:Colors.white,
                                    fontSize: 16
                                  ),
                                ),
                              ),
                            ),
                         ],
                        ),
          ),
                      ],
                    ),
                  ),
                  // Content for 'Review' tab
                  Container(
                   margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.04, // Adjusts left margin based on screen width
            top: MediaQuery.of(context).size.height * 0.01, // Adjusts top margin based on screen height
          ),
          
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.025),
          
                              child: Text(
                                "Reviews",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            SvgPicture.asset("svgs/edit-2.svg"),
                            Padding(
                              padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.04),
          
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return AddReviews();
                                    }),
                                  );
                                },
                                child: Text(
                                  "add review",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: primarycolor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Review(),
                        Review(),
                        Review(),
                        Review(),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          
                        Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.10, // Use MediaQuery for height (12% of screen height)
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black.withOpacity(0.1), width: 1), // Adjust border color and width as needed
              borderRadius:BorderRadius.circular(16),

            ),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: buttonWidth, // Use calculated width
                              height: buttonHeight, // Use calculated height
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color:primarycolor,
                              ),
                              child: Center(
                                child: Text(
                                  "Book Services Now",
                                  style: TextStyle(
                                    color:Colors.white,
                                    fontSize: 16
                                  ),
                                ),
                              ),
                            ),
                         ],
                        ),
          ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
