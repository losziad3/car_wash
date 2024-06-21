import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class AppDropDown<T> extends StatefulWidget {
  final List<T> items;
  final void Function(T?) onChanged;

  const AppDropDown({Key? key, required this.items, required this.onChanged})
      : super(key: key);

  @override
  _AppDropDownState<T> createState() => _AppDropDownState<T>();
}

class _AppDropDownState<T> extends State<AppDropDown<T>> {
  T? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.lightGrey,
          width: 1.3.w,
        ),
        color: AppColors.lightGrey,
      ),
      child: DropdownButton<T>(
        isExpanded: true,
        underline: const SizedBox(),
        value: _selectedValue,
        items: widget.items.map((T value) {
          return DropdownMenuItem<T>(
            value: value,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                (value).toString(),
                style: AppStyles.font14Black400,
              ),
            ),
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            _selectedValue = newValue;
          });
          widget.onChanged(newValue);
        },
      ),
    );
  }
}
