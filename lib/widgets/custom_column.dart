// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  final String title, count, quantity;
  const CustomColumn({
    Key? key,
    required this.title,
    required this.count,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
        Text(
          "$count pcs x $quantity",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
