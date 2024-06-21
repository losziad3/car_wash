import 'package:flutter/material.dart';
import 'package:car_wash/core/helpers/spacing.dart';

import '../../../../../widgets/CircleAvater.dart';

class TwoCircleAvatars extends StatelessWidget {
  const TwoCircleAvatars({super.key, });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
          },
          child: const CustomCircleAvatar(
            child:'assets/svgs/gmail.svg',
            size: 30,
          ),
        ),
        horizontalSpace(20),
        GestureDetector(
          onTap: () {
          },
          child: const CustomCircleAvatar(
            child: 'assets/svgs/facebook.svg',
            size: 30,
          ),
        ),
      ],
    );
  }
}
