// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ui_design/constant/colors.dart';
import 'package:ui_design/constant/strings.dart';
import 'package:ui_design/widgets/custom_column.dart';
import 'package:ui_design/widgets/custom_expansion_tile.dart';
import 'package:ui_design/widgets/custom_table.dart';

import '../widgets/custom_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.1),
        child: AppBar(
          backgroundColor: bgColor,
          title: Text("Table Data"),
          centerTitle: true,
        ),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 114,
                  width: width,
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: Icon(
                          Icons.cancel,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, bottom: 16),
                        child: Text(
                          "Demo Limited Company",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 13),
                CustomExpansionTitle(
                  icon: Icons.shopping_cart,
                  title: "Purchase",
                  itemCount: purchaseList.length,
                  list: purchaseList,
                ),
                CustomExpansionTitle(
                  icon: Icons.shopping_bag,
                  title: "Sell",
                  itemCount: sellList.length,
                  list: sellList,
                ),
                CustomExpansionTitle(
                  icon: Icons.home_repair_service,
                  title: "Stock / Inventory",
                  itemCount: stockList.length,
                  list: stockList,
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Table(
                border: TableBorder.all(color: bgColor),
                columnWidths: {1: FixedColumnWidth(90)},
                children: [
                  TableRow(children: [
                    Column(
                      children: [
                        Container(
                          height: 32,
                          width: width,
                          color: bgColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Dues",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                "Previous Due",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "01 January 2022",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 78,
                      color: Color(0xFFC9ECE3).withOpacity(.30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Due",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            " ৳ 2000",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFF37048),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 32,
                          width: width,
                          color: bgColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Purchase",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        CustomRow(
                          title1: "Invoice Date",
                          description1: "01 January 2022",
                          title2: "Invoice No : ",
                          description2: "5386328",
                        ),
                        Table(
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
                                    CustomColumn(
                                      title: "Test Product 01",
                                      count: "200",
                                      quantity: "200",
                                    ),
                                    SizedBox(height: 30),
                                    CustomColumn(
                                      title: "Test Product 01",
                                      count: "20",
                                      quantity: "300",
                                    ),
                                    SizedBox(height: 30),
                                    CustomColumn(
                                      title: "Test Product 01",
                                      count: "20",
                                      quantity: "200",
                                    ),
                                    SizedBox(height: 30),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text(
                                        " ৳ 2000",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                    Container(
                                      color: Color(0xFFC9ECE3).withOpacity(.30),
                                      child: Text(
                                        " ৳ 3000",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 40),
                                    Container(
                                      color: Color(0xFFC9ECE3).withOpacity(.30),
                                      child: Text(
                                        " ৳ 6000",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ],
                        ),
                        CustomTable(
                          title1: "Discount",
                          title2: "VAT",
                          price1: " ৳ 4560",
                          price2: " ৳ 2000",
                        ),
                        CustomTable(
                          title1: "Total Amount",
                          title2: "Grand Total",
                          price1: " ৳ 14000",
                          price2: " ৳ 7000",
                        ),
                        CustomTable(
                          title1: "Previous Due",
                          title2: "VAT",
                          price1: " ৳ 4560",
                          price2: " ৳ 2000",
                        ),
                        Table(
                          border: TableBorder.all(color: bgColor),
                          columnWidths: const {
                            1: FixedColumnWidth(70),
                          },
                          children: const [
                            TableRow(children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Remaining Balance",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "৳ 4560",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                              ),
                            ])
                          ],
                        ),
                      ],
                    ),
                    Container(
                      color: Color(0xFFC9ECE3).withOpacity(.30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Due",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            " ৳ 2000",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFF37048),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ],
              ),
              Table(
                border: TableBorder.all(color: bgColor),
                columnWidths: const {
                  1: FixedColumnWidth(90),
                },
                children: [
                  TableRow(children: [
                    Column(
                      children: [
                        Container(
                          height: 32,
                          width: width,
                          color: bgColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Payment",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        CustomRow(
                          title1: "Invoice Date",
                          description1: "01 January 2022",
                          title2: "Invoice No : ",
                          description2: "5386328",
                        ),
                        CustomTable(
                          title1: "Discount",
                          title2: "VAT",
                          price1: " ৳ 0",
                          price2: " ৳ 0",
                        ),
                        CustomTable(
                          title1: "Grand Total",
                          title2: "Previous Due",
                          price1: " ৳ 0",
                          price2: " ৳ 30000",
                        ),
                        CustomTable(
                          title1: "Total Amount",
                          title2: "Total Payment",
                          price1: " ৳ 30000",
                          price2: " ৳ 10000",
                        ),
                        Table(
                          border: TableBorder.all(color: bgColor),
                          columnWidths: const {
                            1: FixedColumnWidth(70),
                          },
                          children: const [
                            TableRow(children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Remaining Balance",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "৳ 20000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                              ),
                            ])
                          ],
                        ),
                      ],
                    ),
                    Container(
                      color: Color(0xFFC9ECE3).withOpacity(.30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Due",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            " ৳ 2000",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFF37048),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ],
              ),
              Table(
                border: TableBorder.all(color: bgColor),
                columnWidths: const {
                  1: FixedColumnWidth(90),
                },
                children: [
                  TableRow(children: [
                    Column(
                      children: [
                        Container(
                          height: 32,
                          width: width,
                          color: bgColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Return",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        CustomRow(
                          title1: "Invoice Date",
                          description1: "01 January 2022",
                          title2: "Invoice No : ",
                          description2: "5386328",
                        ),
                        CustomRow(
                          title1: "Return Date",
                          description1: "01 January 2022",
                          title2: "Return No : ",
                          description2: "5386328",
                        ),
                        CustomTable(
                          title1: "Discount",
                          title2: "VAT",
                          price1: " ৳ 0",
                          price2: " ৳ 0",
                        ),
                        CustomTable(
                          title1: "Grand Total",
                          title2: "Previous Due",
                          price1: " ৳ 0",
                          price2: " ৳ 30000",
                        ),
                        CustomTable(
                          title1: "Total Amount",
                          title2: "Total Payment",
                          price1: " ৳ 30000",
                          price2: " ৳ 10000",
                        ),
                        Table(
                          border: TableBorder.all(color: bgColor),
                          columnWidths: const {
                            1: FixedColumnWidth(70),
                          },
                          children: const [
                            TableRow(children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Remaining Balance",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "৳ 20000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                              ),
                            ])
                          ],
                        ),
                      ],
                    ),
                    Container(
                      color: Color(0xFFC9ECE3).withOpacity(.30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Due",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            " ৳ 2000",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFF37048),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ],
              ),
              SizedBox(height: 25),
              Container(
                height: 48,
                width: 343,
                decoration: BoxDecoration(
                    color: bgColor, borderRadius: BorderRadius.circular(4)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_box,
                        color: Colors.white,
                        size: 15.5,
                      ),
                      SizedBox(width: 7),
                      Text(
                        "Pay the balance",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
