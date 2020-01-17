
import 'package:cafe_super/halaman_utama.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "aplikasi cafe",
      home: HalamanUtama(),
      debugShowCheckedModeBanner: false,
    );
  }
}
