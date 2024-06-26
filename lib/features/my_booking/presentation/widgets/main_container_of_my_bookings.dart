import 'package:car_wash/features/my_booking/presentation/widgets/button_my_bookings.dart';
import 'package:car_wash/features/my_booking/presentation/widgets/statue_of_booking_screen.dart';
import 'package:flutter/material.dart';

class MainContainerOfMyBookings extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color textColor1;
  final Color textColor2;
  final String text1;
  final String text2;
  const MainContainerOfMyBookings({
    super.key,
    required this.screenHeight, required this.color1, required this.color2, required this.textColor1, required this.textColor2, required this.text1, required this.text2,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:  BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: Padding(
          padding:  const EdgeInsets.all(8.0),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StatueOfBookingScreen(
                    color: color1,
                    text: text1,
                    colorOfText: textColor1,
                  ),
                  StatueOfBookingScreen(
                    color: color2,
                    text: text2,
                    colorOfText: textColor2,
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * .02,
              ),
              const Text(
                'Booking Specialist service',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                height: screenHeight * .02,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'No. of cars',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    'Booking Date',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    'Total Payment',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * .01,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '3 Cars',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '01 Jan',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '98.00 LE',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * .03,
              ),
              const ButtonsMyBookings(
                textButton1: 'Details',
                textButton2: 'Schedules',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
