import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:washit_project/screens/FullCleaning.dart';
import 'package:washit_project/screens/NearestServices.dart';
import 'package:washit_project/screens/Services.dart';
import 'package:washit_project/screens/filter.dart';
import 'package:washit_project/widgets/Customcontainer.dart';
import 'package:washit_project/widgets/constant.dart';
import 'package:washit_project/widgets/servicescontainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    int currentIndex = 0;
    
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    double dynamicPadding = screenWidth * 0.02; // 2% of screen width as padding
    double dynamicSpacing = screenWidth * 0.01; // 1% of screen width as spacing
     double dynamicHeight = screenHeight * 0.01;
     double dynamicRightPadding = screenWidth * 0.025;
      double dynamicTextSize = screenWidth * 0.04;
          double dynamicWidth = screenWidth * 0.05; 
          final double containerWidth = screenWidth * 0.6; // Adjust as needed
final double containerHeight = screenHeight * 0.3; // Adjust as needed
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
          children: [
            SizedBox(width: 7),
            Text(
              "Hello Shehab,",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
  SizedBox(
            height: dynamicHeight,
          ),
            Padding(
               padding: EdgeInsets.only(left: dynamicPadding/1.8),
              child: Row(
                children: [
                SvgPicture.asset("svgs/location.svg"),
              SizedBox(width: dynamicSpacing),
                  Text(
                    "Cairo, Egypt",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: dynamicSpacing),
                  SvgPicture.asset("svgs/arrow-left.svg")
                ],
              ),
            ),
          ],
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: dynamicRightPadding),
            child: SvgPicture.asset("svgs/notification.svg")
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
           Padding(
               padding: EdgeInsets.only(left: dynamicPadding,right: dynamicRightPadding),
             child: Container(
              
               width: MediaQuery.of(context).size.width * 0.9, // 90% of the screen width
               height: MediaQuery.of(context).size.height * 0.06, // 6% of the screen height
               decoration: BoxDecoration(
                 border: Border.all(
                   color: Color(0xFFE4E4E4),
                 ),
                 borderRadius: BorderRadius.circular(32),
               ),
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: GestureDetector(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                       return Filter();
                     }),);
                   },
                   child: Row(
                     children: [
                       SvgPicture.asset("svgs/Searchbar.svg"),
                       SizedBox(width: dynamicSpacing*2),
                       Text("Search",style: TextStyle(color:Color(0xFF797979) ),),
                       Spacer(flex: 1),
                    SvgPicture.asset("svgs/arrow.svg")
                     ],
                   ),
                 ),
               ),
             ),
           ),

             SizedBox(
            height: dynamicHeight*2,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9, // 90% of the screen width
              height: MediaQuery.of(context).size.height * 0.25, // 25% of the screen height
              decoration: BoxDecoration(
                color: Color(0xFF0037BB),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                Padding(
                    padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.045), // Adjust padding
                    child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Hey, no parking ",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.045, // Adjust font size
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
                Text(
                "required, our car wash ",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.045, // Adjust font size
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              Row(
                children: [
                  Text(
                    " app ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.045, // Adjust font size
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.005), // Adjust width
                  Text(
                    "comes to you!",
                    style: TextStyle(
                      color: Color(0xFFFFCE43),
                      fontSize: MediaQuery.of(context).size.width * 0.045, // Adjust font size
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              ElevatedButton(

                onPressed: () {},
                child: Text(
                  "Order specialist",
                  style: TextStyle(
                    color: Color(0xFF346EF7),
                    fontSize: MediaQuery.of(context).size.width * 0.045, // Adjust font size
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
                    ),
                  ),
                 Positioned(
  top: MediaQuery.of(context).size.height * 0.05, // Adjust position
  right: MediaQuery.of(context).size.width * 0.03, // Adjust position
  child: Container(
    width: MediaQuery.of(context).size.width * 0.4, // Increased width
    height: MediaQuery.of(context).size.height * 0.13, // Increased height
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.045),
      image: DecorationImage(
        image: AssetImage("svgs/Home.png"),
        fit: BoxFit.cover, // Adjust fit as needed
      ),
    ),
  ),
),

            
                ],
              ),
            ),
          ),
SizedBox(height: dynamicHeight,),

            Row(children: [
              Padding(
                padding:  EdgeInsets.only(left:dynamicPadding ),
                child: Text("Our Services",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: MediaQuery.of(context).size.width * 0.05, 
                ),),
              ),
             
              Spacer(flex: 1,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Services();
                  }),);
                },
                child: Padding(
                  padding:  EdgeInsets.only(right: dynamicRightPadding),
                  child: Text("See all",style: TextStyle(
                     fontSize: MediaQuery.of(context).size.width * 0.04,
                      fontWeight: FontWeight.w400,
                      color: primarycolor,
                  ),),
                ),
              ),
            ],),
               SizedBox(height: dynamicHeight,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomContainer(
                   iconPath: "svgs/EXTERIOR.svg",
                    Text1: "Exterior",
                    Text2: "Cleaning",
                  ),
                SizedBox(
            width: dynamicWidth,
          ),
                  CustomContainer(
                    Text1: "Interior",
                    Text2: "Cleaning",
                      iconPath: "svgs/inter.svg",
                  ),
                SizedBox(
            width: dynamicWidth,
          ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return FullCleaning();
                      }),);
                    },
                    child: CustomContainer(
                      Text1: "Full ",
                      Text2: "Cleaning",
                    iconPath: "svgs/full.svg",
                    ),
                  ),
                  SizedBox(
            width: dynamicWidth,
          ),
                  CustomContainer(
                    Text1: "Engine",
                    Text2: "Bay",
                 iconPath: "svgs/engine.svg",
                  ),
                ],
              ),
            ),
            SizedBox(height: dynamicHeight*4,),
            Row(
              children: [
              Text("Nearest Services Provider",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: MediaQuery.of(context).size.width * 0.05,
              ),),
              Spacer(flex: 1,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return NearestServices();
                  }),);
                },
                child: Text("See all",style: TextStyle(
                   fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontWeight: FontWeight.w400,
                    color: primarycolor,
                ),),
              ),
            ],
            ),
               SizedBox(height: dynamicHeight,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ServiceContainer(),
                  SizedBox(width: dynamicWidth/2,),
                  ServiceContainer(),
                ],
              ),
            ),
          ],
        ),
      ),



 bottomNavigationBar: Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(15), // Adjust the radius as desired
        ),
    ),
    child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Make sure the type is set to 'fixed' for consistent behavior
        currentIndex: currentIndex, // Track the current index
        onTap: (index) {
            setState(() {
                currentIndex = index; // Update the current index when a tab is selected
            });
        },
        items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                    "svgs/homebar.svg",
                    color: currentIndex == 0 ? primarycolor : Colors.grey, // Apply blue color if selected, grey otherwise
                ),
                label: "  ",
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                    "svgs/explore.svg",
                    color: currentIndex == 1 ? primarycolor : Colors.grey, // Apply blue color if selected, grey otherwise
                ),
                label: "Explore",
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                    "svgs/fav.svg",
                    color: currentIndex == 2 ? primarycolor : Colors.grey, // Apply blue color if selected, grey otherwise
                ),
                label: "Favorite",
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                    "svgs/profile.svg",
                    color: currentIndex == 3 ? primarycolor : Colors.grey, // Apply blue color if selected, grey otherwise
                ),
                label: "Profile",
            ),
        ],
    ),
),


  

    );
  }
}
