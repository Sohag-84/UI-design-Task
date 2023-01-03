// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_design/constant/colors.dart';

class CustomTable extends StatelessWidget {
  final String title1, title2, price1, price2;
  const CustomTable({
    required this.title1,
    required this.title2,
    required this.price1,
    required this.price2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: bgColor),
      columnWidths: const {
        1: FixedColumnWidth(70),
      },
      children: [
        TableRow(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title1,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  title2,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                price1,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
              Text(
                price2,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ])
      ],
    );
  }
}
