import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan lebar layar
    final screenWidth = MediaQuery.of(context).size.width;

    // Menentukan ukuran dinamis berdasarkan lebar layar
    final imageSize = screenWidth * 0.15; // Ukuran gambar 15% dari lebar layar
    final paddingSize = screenWidth * 0.03; // Padding horizontal dinamis

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Row(
          children: [
            // Single Item - All
            Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingSize),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(imageSize * 0.3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "assets/burger.jpeg",
                      width: imageSize,
                      height: imageSize,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'All',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04, // Ukuran teks dinamis
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            // Single Item - Minuman
            Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingSize),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(imageSize * 0.3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "assets/burger.jpeg",
                      width: imageSize,
                      height: imageSize,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Minuman',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            // Single Item - Burger
            Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingSize),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(imageSize * 0.3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "assets/burger.jpeg",
                      width: imageSize,
                      height: imageSize,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Burger',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
