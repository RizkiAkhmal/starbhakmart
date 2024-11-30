import 'package:flutter/material.dart';
import 'package:stharbak_mart/widgets/BarBawah.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const supabaseUrl = 'https://pawneaynfewqluxqmvba.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBhd25lYXluZmV3cWx1eHFtdmJhIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzA5NjU4ODAsImV4cCI6MjA0NjU0MTg4MH0.i7fa-T8l2e0acZ_346A16rQhl7RrKQqhdumRKRJmjto';

Future<void> main() async {
  await Supabase.initialize(url: supabaseUrl, anonKey:  supabaseKey);
  runApp(MyApp());
}
        

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbhak Mart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255)
      ),
      routes: {
        '/': (context) =>   BarBawah(),
      },

    );
  }
}

