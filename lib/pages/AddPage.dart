import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stharbak_mart/widgets/AppBarWidgets2.dart';
import 'package:stharbak_mart/widgets/TambahDataWidgets.dart';

class Addpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan ukuran layar
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          //Button Add
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Appbarwidgets2(),

                  // Add Data
                  Row(
                    children: [
                      ElevatedButton(
                        child: Row(children: [
                          Text(
                            'ADD',
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.01),
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: screenWidth * 0.05,
                          ),
                        ]),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Tambahdatawidgets()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.05,
                            vertical: screenHeight * 0.01,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.02,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Photo",
                          style: TextStyle(fontSize: screenWidth * 0.04),
                        ),
                        Text(
                          "Nama Produk",
                          style: TextStyle(fontSize: screenWidth * 0.04),
                        ),
                        Text(
                          "Harga",
                          style: TextStyle(fontSize: screenWidth * 0.04),
                        ),
                        Text(
                          "Aksi",
                          style: TextStyle(fontSize: screenWidth * 0.04),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),

                  // Kotak Produk
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                    child: Container(
                      width: double.infinity,
                      height: screenHeight * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(screenWidth * 0.02),
                            child: Image.asset(
                              'assets/burger.jpeg',
                              height: screenHeight * 0.12,
                              width: screenWidth * 0.3,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Burger',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.045,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Rp. 100.000',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                      ),
                                    ),
                                    Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                      size: screenWidth * 0.05,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Divider(
                    color: Colors.black,
                  ),

                   // Kotak Produk
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                    child: Container(
                      width: double.infinity,
                      height: screenHeight * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(screenWidth * 0.02),
                            child: Image.asset(
                              'assets/burger.jpeg',
                              height: screenHeight * 0.12,
                              width: screenWidth * 0.3,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Burger',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.045,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Rp. 100.000',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                      ),
                                    ),
                                    Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                      size: screenWidth * 0.05,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Divider(
                    color: Colors.black,
                  ),

                   // Kotak Produk
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                    child: Container(
                      width: double.infinity,
                      height: screenHeight * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(screenWidth * 0.02),
                            child: Image.asset(
                              'assets/burger.jpeg',
                              height: screenHeight * 0.12,
                              width: screenWidth * 0.3,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Burger',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.045,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Rp. 100.000',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                      ),
                                    ),
                                    Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                      size: screenWidth * 0.05,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Divider(
                    color: Colors.black,
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
