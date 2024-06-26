import 'package:car_wash/features/my_booking/presentation/screens/active_booking_screen.dart';
import 'package:car_wash/features/my_booking/presentation/screens/cancelled_booking_screen.dart';
import 'package:car_wash/features/my_booking/presentation/screens/completed_booking_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/app_bar.dart';

class MyBookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('My Bookings'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Handle search button press
              },
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Active'),
              Tab(text: 'Completed'),
              Tab(text: 'Cancelled'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ActiveBookingsScreen(),
            CompletedBookingsScreen(),
            CancelledBookingsScreen(),
          ],
        ),
      ),
    );
  }
}





