import 'package:car_wash/features/my_booking/presentation/screens/my_booking_screen.dart';
import 'package:car_wash/features/profile_screen/presentation/screens/your_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:car_wash/core/constants/app_constant.dart';
import 'package:car_wash/core/widgets/app_bar.dart';
import 'package:car_wash/features/profile_screen/presentation/widgets/profile_screen_item.dart';
import 'package:car_wash/widgets/my_separator.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../cubits/auth_cubit/auth_cubit.dart';
import '../../../../screens/signup.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarWithCustomAvatar('Profile',(){}),
      body: Column(
        children: [
           ProfileScreenItem(
             iconPath: kUserIcon,
             text: 'Your Profile',
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => YourProfile(),));
             },
           ),
          const SizedBox(
            height: 10.0,
          ),
          const MySeparator(),
          const SizedBox(
            height: 10.0,
          ),
          ProfileScreenItem(
            iconPath: kCardIcon,
            text: 'Payment Cards',
            onTap: (){
              ///TODO: REMOVE THIS
              print("TAPED");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlocProvider(
                    create: (context) => Authcubit(),
                    child:  SignUp(),
                  ),
                ),
              );
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          const MySeparator(),
          const SizedBox(
            height: 10.0,
          ),
          ProfileScreenItem(
            iconPath: kCalendarIcon,
            text: 'My Bookings',
            onTap: ()
            {
             Navigator.push(context, MaterialPageRoute(builder: (context) => MyBookingScreen(),));
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          const MySeparator(),
          const SizedBox(
            height: 10.0,
          ),
          ProfileScreenItem(
            iconPath: kInfoCircleIcon,
            text: 'Help Center',
            onTap: (){},
          ),
          const SizedBox(
            height: 10.0,
          ),
          const MySeparator(),
          const SizedBox(
            height: 10.0,
          ),
          ProfileScreenItem(
            iconPath: kLogoutIcon,
            text: 'Logout',
            onTap: (){},
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}



