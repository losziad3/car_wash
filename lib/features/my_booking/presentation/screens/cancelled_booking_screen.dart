
import 'package:car_wash/features/my_booking/presentation/widgets/main_container_of_my_bookings.dart';
import 'package:flutter/material.dart';

class CancelledBookingsScreen extends StatelessWidget {
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
          color1:  Colors.red.shade100,
          color2:   const Color(0xFFF1F9FB),
          textColor1: Colors.red,
          textColor2: Colors.blue,
          text1: 'Cancelled',
          text2: 'Daily package',
        );
      },
    );
  }
}