import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:washit_project/screens/Searchhomepage.dart';
import 'package:washit_project/widgets/Starcontainer.dart';
import 'package:washit_project/widgets/constant.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

final CountryList = ["EGYPT, Alex", "Espain,Madrid","Cairo, Egypt"];
double _lowerValue = 10;
double _upperValue = 30;
int divisions = 6;
double _kmValue = 3;

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
     final double screenWidth = MediaQuery.of(context).size.width;
   final double dynamicWidth = screenWidth * 0.04; 
    final double dynamicPadding = screenWidth * 0.05; 
      final double dynamicRPadding = screenWidth * 0.05; 
      final double screenHeight = MediaQuery.of(context).size.height;
        final double dynamicHeight = screenHeight * 0.01; 
        final double leftPadding = screenWidth * 0.05;
 final buttonWidth = screenWidth * 0.4; // Width as 80% of the screen width
    final buttonHeight = screenHeight * 0.06; // Height as 6% of the screen heigh
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Filter",
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.04,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(  
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            // left: MediaQuery.of(context).size.width * 0.03,
          ),
          child: Column(
           
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.7,
                ),
                child: Text(
                  "Location",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                  ),
                ),
              ),
             Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.02,
          right: MediaQuery.of(context).size.width * 0.07,
          top: MediaQuery.of(context).size.height * 0.01,
          bottom: MediaQuery.of(context).size.height * 0.01,
        ),
        child: DropdownButtonFormField(
          items: CountryList
              .map((e) => DropdownMenuItem(child: Text(e), value: e))
              .toList(),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFFFFFFF)),
              borderRadius: BorderRadius.circular(
                MediaQuery.of(context).size.width * 0.1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFFFFFFF)),
              borderRadius: BorderRadius.circular(
                MediaQuery.of(context).size.width * 0.1,
              ),
            ),
            border: OutlineInputBorder(),
            hintText: "Cairo, Egypt",
            hintStyle: TextStyle(color: Colors.black),
            filled: true,
            fillColor: Colors.grey[100],
            contentPadding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
            ),
          ),
          onChanged: (val) {},
          // Custom icon using SvgPicture
          icon: Padding(
           padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.03, // Adjust the fraction as needed
          ),
            child: SvgPicture.asset(
              'svgs/Clippath .svg', // Specify the path to your SVG icon
              width: MediaQuery.of(context).size.width * 0.01, // Adjust the width as needed
              height: MediaQuery.of(context).size.height * 0.03, // Adjust the height as needed
            ),
          ),
        ),
            ),
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.7,
                ),
                child: Text(
                  "Serivces",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                 padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.08),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.12,
                        height: MediaQuery.of(context).size.height * 0.04,
                        decoration: BoxDecoration(
                          color: primarycolor,
                          borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "All",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                   SizedBox(width: dynamicWidth),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.32,
                        height: MediaQuery.of(context).size.height * 0.04,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.3,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Exterior Cleaning",
                            style: TextStyle(color: Colors.grey,
                            fontSize: 16),
                          ),
                        ),
                      ),
                         SizedBox(width: dynamicWidth),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.32,
                        height: MediaQuery.of(context).size.height * 0.04,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Interior Cleaning",
                            style: TextStyle(color: Colors.grey,fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.6,
                ),
                child: Text(
                  "Price Range",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                  ),
                ),
              ),
             Column(
          children: [
            Container(
        width: MediaQuery.of(context).size.width, // Set width to full width of the screen
        child: SliderTheme(
          data: SliderThemeData(
            activeTrackColor: Colors.blue[700],
            inactiveTrackColor: Colors.grey,
            trackShape: RectangularSliderTrackShape(),
            trackHeight: 4.0,
            thumbColor: Colors.blueAccent,
            thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: MediaQuery.of(context).size.width * 0.04),
            overlayColor: Colors.blue.withAlpha(32),
            overlayShape: RoundSliderOverlayShape(
                overlayRadius: MediaQuery.of(context).size.width * 0.06),
          ),
          child: RangeSlider(
            values: RangeValues(_lowerValue, _upperValue),
            min: 0,
            max: 100,
            divisions: divisions,
            onChanged: (RangeValues values) {
              setState(() {
                _lowerValue = values.start;
                _upperValue = values.end;
              });
            },
          ),
        ),
            ),
            Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
             padding: EdgeInsets.only(left: dynamicPadding),
            child: Text('5LE',style: TextStyle(fontSize: 12),),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
          Text('10LE' ,style: TextStyle(fontSize: 12),),
          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
          Text('20LE' ,style: TextStyle(fontSize: 12),),
          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
          Text('25LE' ,style: TextStyle(fontSize: 12),),
          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
          Text('30LE' ,style: TextStyle(fontSize: 12),),
          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
          Padding(
              padding: EdgeInsets.only(right: dynamicRPadding),
            child: Text('40LE' ,style: TextStyle(fontSize: 12),),
          ),
        ],
            ),
          ],
        ),
        
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.2,
                ),
                child: Text(
                  "Distance to service provider",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                  ),
                ),
              ),
              Column(
                children: [
                SliderTheme(
        data: SliderThemeData(
          activeTrackColor: Colors.blue[700],
          inactiveTrackColor: Colors.grey,
          trackShape: RectangularSliderTrackShape(),
          trackHeight: 5.0,
          thumbColor: primarycolor,
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: MediaQuery.of(context).size.width * 0.03, // Smaller thumb radius
          ),
          overlayColor: Colors.blue.withAlpha(32),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: MediaQuery.of(context).size.width * 0.05,
          ),
        ),
        child: Slider(
          value: _kmValue,
          min: 0,
          max: 100,
          divisions: 100,
          onChanged: (double value) {
            setState(() {
              _kmValue = value;
            });
          },
        ),
            ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.55),
                      Padding(
                        padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.02,
                        ),
                        child: Text('5km',style: TextStyle(fontSize: 12),),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.7,
                ),
                child: Text(
                  "Star Rating",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Padding(
                padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Star(
                      number: "1",
                      color: Colors.black,
                      image: "svgs/Star1.svg",
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                    Star(
                      number: "2",
                      color: Colors.black,
                         image: "svgs/Star1.svg",
                      
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                    Star(
                      number: "3",
                      color: Colors.black,
                         image: "svgs/Star1.svg",
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                    Star(
                      number: "4",
                      color: Colors.black,
                         image: "svgs/Star1.svg",
                      
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                    Star(
                      number: "5",
                      color: primarycolor,
                         image: "svgs/Starbluesvg.svg",
                      
                    
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.8,
                ),
                child: Text(
                  "Sortby",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                  ),
                ),
              ),
              SizedBox(
        height: dynamicHeight, // Use the calculated height
            ),
              Padding(
                padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.12,
                      height: MediaQuery.of(context).size.height * 0.04,
                      decoration: BoxDecoration(
                        color: primarycolor,
                        borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width * 0.1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "All",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.32,
                      height: MediaQuery.of(context).size.height * 0.04,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width * 0.1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Popular",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.32,
                      height: MediaQuery.of(context).size.height * 0.04,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width * 0.1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Nearby",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height:10 ,
              ),
              Row(
                children: [
                  Padding(
                 padding: EdgeInsets.only(left: leftPadding),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.32,
                      height: MediaQuery.of(context).size.height * 0.04,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width * 0.1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Price: Low to High",
                          style: TextStyle(color: Colors.grey,),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
        width: dynamicWidth*2, // Use the calculated width
            ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.40,
                    height: MediaQuery.of(context).size.height * 0.04,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.1,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Price: High to Low",
                        style: TextStyle(color: Colors.grey,),
                      ),
                    ),
                  ),
                ],
              ),
                SizedBox(
          height: MediaQuery.of(context).size.height * 0.02, // Adjust height as a percentage of screen height
        ),
        
                 Container(
          height: MediaQuery.of(context).size.height * 0.10, // Use MediaQuery for height (12% of screen height)
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black.withOpacity(0.1), width: 1), // Adjust border color and width as needed
        borderRadius: BorderRadius.circular(16),
          ),
                     child: Row(
                      children: [
                        Container(
                            width: buttonWidth*1.3, // Use calculated width
                            height: buttonHeight, // Use calculated height
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "Reset filter",
                                style: TextStyle(
                                  color:primarycolor,
                                  fontSize: 16
                                ),
                              ),
                            ),
                          ),
                        GestureDetector (
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return Searchpage();
                            }),);
                          },
                          child: Container(
                              width: buttonWidth, // Use calculated width
                              height: buttonHeight, // Use calculated height
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: primarycolor,
                              ),
                              child: Center(
                                child: Text(
                                  "Apply",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
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
      ),
    );
  }
}
