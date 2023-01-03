// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String title1, description1, title2, description2;
  const CustomRow({
    Key? key,
    required this.title1,
    required this.description1,
    required this.title2,
    required this.description2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title1,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              SizedBox(width: 10),
              Text(
                description1,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                title2,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              SizedBox(width: 10),
              Text(
                description2,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
