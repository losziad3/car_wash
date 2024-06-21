import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:car_wash/widgets/constant.dart';

class UploadDocuments extends StatelessWidget {
  const UploadDocuments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Upload documents",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03),
                  child: Text(
                    "Criminal record",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.04,
                      left: MediaQuery.of(context).size.width * 0.04),
                  child: DottedBorder(
                        borderType: BorderType.RRect,
                        strokeWidth: 1,
                        color: Colors.grey,
                        dashPattern: [7,7,7,7],
                        radius: Radius.circular(12),
                        padding: EdgeInsets.all(6),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      child: Container(
                                   width: MediaQuery.of(context).size.width * 0.85,
                      height: MediaQuery.of(context).size.height * 0.22,
                      
                       
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            SvgPicture.asset("svgs/upload.svg"),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: primarycolor),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Choose file",
                                    style: TextStyle(
                                      color: primarycolor,
                                    ),
                                  )),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Text(
                              "jpg, .png and .svg and zip files",
                              style:
                                  TextStyle(color: Color(0xFF6D6D6D), fontSize: 12),
                            ),
                            Text(
                              "Max 10 MB files are allowed",
                              style:
                                  TextStyle(color: Color(0xFF6D6D6D), fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                 SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                 Padding(
                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03),
                  child: Text(
                    "Personal ID",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),

                Padding(
                 padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.04,
                      left: MediaQuery.of(context).size.width * 0.04),
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    dashPattern: [7,7,7,7],
                    color: Colors.grey,
                    padding: EdgeInsets.all(6),
                    strokeWidth: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                      height: MediaQuery.of(context).size.height * 0.2,
                      
                      
                        child: Column(
                          children: [
                              SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                          Text("Uplodaing...",style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                      
                          ),),
                           SizedBox(
                                height: MediaQuery.of(context).size.height * 0.02,
                              ),
                          SvgPicture.asset("svgs/Frame6.svg"),
                          SizedBox(
                                height: MediaQuery.of(context).size.height * 0.02,
                              ),
                          Container(
                                        width: MediaQuery.of(context).size.width * 0.1900,
                      height: MediaQuery.of(context).size.height * 0.048,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey,),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                        color:  Color(0xFF6D6D6D),
                                      ),
                                    )),
                              ),
                        ],),
                      
                      ),
                    ),
                  ),
                ),
                SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                 Padding(
                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05),
                  child: Text(
                    "Images",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                 SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
              Padding(
               padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.04,
                      left: MediaQuery.of(context).size.width * 0.04),
                child: Container(
                           width: MediaQuery.of(context).size.width * 0.85,
height: MediaQuery.of(context).size.height * 0.2,

                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: 
                Column(children: [
                    SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                    Text("NameofImage.jpg",
                            style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                  
                      ),
                               ),
                                SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                      SvgPicture.asset("svgs/Progressbar.svg"),
                         SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                        Container(
                                   width: MediaQuery.of(context).size.width * 0.1900,
height: MediaQuery.of(context).size.height * 0.048,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey,),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Delete",
                                  style: TextStyle(
                                    color:  Color(0xFF6D6D6D),
                                  ),
                                )),
                          ),

                        
                ],),),
              ),
                  SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                 Padding(
                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05),
                  child: Text(  
                    "Commercial license",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                 SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
              Padding(
               padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.04,
                      left: MediaQuery.of(context).size.width * 0.04),
                child: Container(
                               width: MediaQuery.of(context).size.width * 0.85,
height: MediaQuery.of(context).size.height * 0.18,

                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: 
                Column(children: [
                    SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                    Text("Commercial license.jpg",
                            style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                  
                      ),
                               ),
                                SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                     
                         
                        Container(
                          width: MediaQuery.of(context).size.width * 0.1900,
height: MediaQuery.of(context).size.height * 0.048,

                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey,),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Delete",
                                  style: TextStyle(
                                    color:  Color(0xFF6D6D6D),
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                     
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Text("Status",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                            Text(":",style: TextStyle(color: primarycolor),),
                            Text("Pending",style: TextStyle(color: Color(0xFFFCAF23)),),
                          ],)
                        
                ],),),
              ),
                SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
               Padding(
                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05),
                  child: Text(  
                    "Get Location",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                  SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                Padding(
                   padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.04,
                      left: MediaQuery.of(context).size.width * 0.04),
                  child: Container(
                 width: MediaQuery.of(context).size.width * 0.85,
height: MediaQuery.of(context).size.height * 0.18,

                    decoration: BoxDecoration(
                      border: Border.all(color:Color(0xFFCB1A14)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: 
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Container(
                     width: MediaQuery.of(context).size.width * 0.6,
height: MediaQuery.of(context).size.height * 0.04,

                      decoration: BoxDecoration(
                        border: Border.all(color: primarycolor),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text(
                        "Get Location",style: TextStyle(
                          color: primarycolor,
                        ),
                                          ),
                      ),
                      ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01 ,
                          ),
                     
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Text("Status",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                            Text(":",style: TextStyle(color: primarycolor),),
                            Text("Pending",style: TextStyle(color: Color(0xFFFCAF23)),),
                          ],)
                  ],
                  ),
                  ),
                ),
                                  ],
            ),
            
          ),
           Container(
                height: MediaQuery.of(context).size.height * 0.10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.black
                        .withOpacity(0.1), // Stroke color with 10% opacity
                    width: 1, // Stroke width
                  ),
                ),
                child: Column(children: [

                  Padding(
                  padding: EdgeInsets.only(
    top: MediaQuery.of(context).size.height * 0.01,
  ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(primarycolor)),
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.78,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: Center(
                              child: Text(
                            'Save',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ))),
                    ),
                  ),
                ]),
                  ),
 
        ],
      ),
    );
  }
}
