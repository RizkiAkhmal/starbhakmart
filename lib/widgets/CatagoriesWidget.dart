import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan ukuran layar
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Center( 
    child:  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: screenHeight * 0.02, // Padding responsif untuk vertical
          horizontal: screenWidth * 0.02, // Padding responsif untuk horizontal
        ),
        child: Row(
          children: [
            // Item pertama - All
            _buildCategoryItem(
              context,
              imagePath: "assets/burger.jpeg",
              label: "All",
            ),

            // Item kedua - Minuman
            _buildCategoryItem(
              context,
              imagePath: "assets/burger.jpeg",
              label: "Minuman",
            ),

            // Item ketiga - Burger
            _buildCategoryItem(
              context,
              imagePath: "assets/burger.jpeg",
              label: "Burger",
            ),
          ],
        ),
      ),
    ),
    );
  }

  Widget _buildCategoryItem(BuildContext context,
      {required String imagePath, required String label}) {
    // Mendapatkan ukuran layar
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(screenWidth * 0.02), // Padding responsif
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(screenWidth * 0.06), // Radius responsif
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
              imagePath,
              width: screenWidth * 0.15, // Lebar gambar responsif
              height: screenHeight * 0.08, // Tinggi gambar responsif
            ),
          ),
          SizedBox(height: screenHeight * 0.01), // Spasi responsif
          Text(
            label,
            style: TextStyle(
              fontSize: screenWidth * 0.04, // Ukuran font responsif
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
