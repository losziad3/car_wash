import 'package:car_wash/features/my_booking/presentation/widgets/button_my_bookings.dart';
import 'package:car_wash/features/my_booking/presentation/widgets/main_container_of_my_bookings.dart';
import 'package:car_wash/features/my_booking/presentation/widgets/statue_of_booking_screen.dart';
import 'package:flutter/material.dart';

class ActiveBookingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return MainContainerOfMyBookings(
          screenHeight: screenHeight,
          color1: const Color(0xFFF1F9FB),
          color2: const Color(0xFFF1F9FB),
          textColor1: Colors.blue,
          textColor2: Colors.blue,
          text1: 'Active',
          text2: 'Scheduled',
        );
      },
    );
  }
}
