import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:washit_project/core/constants/app_constant.dart';
import 'package:washit_project/cubits/layout_cubit/layout_cubit.dart';
import 'package:washit_project/cubits/layout_cubit/layout_state.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit, LayoutStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = LayoutCubit.get(context);

        return Scaffold(
          backgroundColor: Colors.white,
          body: cubit.bottomScreens[cubit.currentIndex],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, -3), // changes position of shadow
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                fixedColor: Colors.black,

                onTap: (index) {
                  cubit.changeBottom(index);
                },
                currentIndex: cubit.currentIndex,
                items: [
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      kHomeIcon,
                      width: 24,
                      height: 24,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      kExploreIcon,
                      width: 24,
                      height: 24,
                    ),
                    label: 'Explore',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      kBookmarkIcon,
                      width: 24,
                      height: 24,
                    ),
                    label: 'Bookmark',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      kBookmarkIcon,
                      width: 24,
                      height: 24,
                    ),
                    label: 'Schedules',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      kProfileIcon,
                      width: 24,
                      height: 24,
                    ),
                    label: 'Profile',
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
