import 'package:flutter/material.dart';
import 'package:stharbak_mart/widgets/AllFood.dart';
import 'package:stharbak_mart/widgets/AppBarWidget.dart';
import 'package:stharbak_mart/widgets/CatagoriesWidget.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //AppBar
          Appbarwidget(),

          Padding(
            padding: EdgeInsets.only(top: 20, right: 250, ),
            child: Text(
              "Catagories",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )
              ),
            ),

          //Kategori
          CategoriesWidget(),

          //AllFood
          Padding(
            padding: EdgeInsets.only(top: 0, right: 250, ),
            child: Text(
              "All food",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )
              ),
            ),
          
          Expanded(
            child: SingleChildScrollView(
              child: Allfood(),
            ),
          ),
          
        ],
      ),
    );
  }
}