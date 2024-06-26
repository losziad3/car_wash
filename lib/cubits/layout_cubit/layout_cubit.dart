import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:car_wash/cubits/layout_cubit/layout_state.dart';
import 'package:car_wash/features/bookmark_screen/presentation/screen/bookmark_screen.dart';
import 'package:car_wash/features/explore_screen/presentation/screen/explore_screen.dart';
import 'package:car_wash/features/home_screen/presentation/screen/home_screen.dart';
import 'package:car_wash/features/profile_screen/presentation/screens/profile_screen.dart';
import 'package:car_wash/features/schedule_screen/presentation/screen/schedule_screen.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(LayoutInitialState());

  static LayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> bottomScreens = [
    const HomeScreen(),
    const ExploreScreen(),
    const BookmarkScreen(),
    const ScheduleScreen(),
    const ProfileScreen(),
  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(LayoutChangeBottomNavState());
  }

}