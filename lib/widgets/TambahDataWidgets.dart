import 'dart:io';
import 'package:flutter/material.dart';
import 'package:stharbak_mart/pages/HomePage.dart';
import 'package:stharbak_mart/widgets/AppBarWidgets2.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stharbak_mart/widgets/BarBawah.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

class Tambahdatawidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductForm(),
    );
  }
}

class ProductForm extends StatefulWidget {
  @override
  _ProductFormState createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  String _katagori = 'Makanan';
  // XFile? _imageFile;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  File? _imageFile;

  Future pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _imageFile = File(image.path);
      });
    }
  }

  Future<String?> uploadImage(String path) async {
    if (_imageFile == null) return null;

    final fileName = DateTime.now().millisecondsSinceEpoch;
    final uploadPath = 'uploads/$fileName';

    final response =
        await supabase.storage.from('Foodaas').upload(uploadPath, _imageFile!);

    return supabase.storage.from('Foodaas').getPublicUrl(uploadPath);
  }

  Future<List<dynamic>> fetchData() async {
    final response = await supabase.from('Foodaas').select('*');
    return response as List<dynamic>;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          Appbarwidgets2(),
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.04),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(screenWidth * 0.04),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(screenWidth * 0.08),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: Offset(0, 4),
                      ),
                    ]),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ADD NEW DATA',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth * 0.045),
                      ),
                      SizedBox(height: screenHeight * 0.03),

                      // Nama Produk
                      TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                            labelText: 'Nama Produk',
                            hintText: 'Masukan Nama Produk',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(screenWidth * 0.05))),
                      ),
                      SizedBox(height: screenHeight * 0.03),

                      // Harga Field
                      TextField(
                        controller: _priceController,
                        decoration: InputDecoration(
                          labelText: 'Harga',
                          hintText: 'Masukan Harga',
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.05),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),

                      // Kategori Produk Dropdown
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Kategori produk',
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.05),
                          ),
                        ),
                        value: 'Makanan',
                        items: [
                          DropdownMenuItem(
                            value: 'Makanan',
                            child: Text('Makanan'),
                          ),
                          DropdownMenuItem(
                            value: 'Minuman',
                            child: Text('Minuman'),
                          ),
                        ],
                        onChanged: (value) {
                          // Handle dropdown change
                        },
                      ),
                      SizedBox(height: screenHeight * 0.03),

                      // Image Picker Field (placeholder)
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.03,
                            vertical: screenHeight * 0.015,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.05),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _imageFile != null
                                  ? Flexible(
                                      child: Image.file(
                                        _imageFile!,
                                        width: screenWidth * 0.3,
                                        height: screenHeight * 0.15,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : const Text("No image selected"),
                              ElevatedButton(
                                onPressed: pickImage,
                                child: const Text("Pick Image"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.05),

                      // Button
                      ElevatedButton(
                        onPressed: () async {
                          final name = _nameController.text;
                          final price = _priceController.text;

                          var imageUrl = await uploadImage('uploads');
                          if (imageUrl == null) return;

                          await supabase.from('Foodaas').insert({
                            'name': name,
                            'price': price,
                            'image_url': imageUrl,
                          });

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BarBawah(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.3,
                            vertical: screenHeight * 0.02,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.05),
                          ),
                        ),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.045,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
