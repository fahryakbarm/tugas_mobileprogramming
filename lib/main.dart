import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/produk_form.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'menampilkan hello world', home: Produkform()
    );
    }
    }