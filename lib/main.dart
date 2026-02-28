import 'package:flutter/material.dart';
import 'home_page.dart';
import 'service_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ServiceRepository repository = ServiceRepository();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layanan Umum Samarinda',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(repository: repository),
    );
  }
}