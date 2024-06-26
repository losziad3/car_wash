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
              // Handle back button press
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

class ActiveBookingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Active Bookings Screen'),
    );
  }
}

class CompletedBookingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Completed Bookings Screen'),
    );
  }
}

class CancelledBookingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Cancelled Bookings Screen'),
    );
  }
}
