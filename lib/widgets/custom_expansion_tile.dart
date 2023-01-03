// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_design/constant/colors.dart';

class CustomExpansionTitle extends StatelessWidget {
  final IconData icon;
  final String title;
  final int itemCount;
  final List list;
  const CustomExpansionTitle({
    Key? key,
    required this.icon,
    required this.title,
    required this.itemCount,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ExpansionTile(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
      leading: Icon(icon),
      childrenPadding: EdgeInsets.only(left: width * 0.18),
      iconColor: bgColor,
      textColor: bgColor,
      children: List.generate(
          itemCount,
          (index) => ListTile(
                title: Text(
                  list[index],
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: bgColor,
                  ),
                ),
              )),
    );
  }
}
