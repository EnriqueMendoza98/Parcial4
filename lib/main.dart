import 'package:flutter/material.dart';
import 'package:flutter_geo/app/ui/pages/home/home_page.dart';

void main() {
  runApp(const AppMaps());
}

class AppMaps extends StatelessWidget {
  const AppMaps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Maps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}
