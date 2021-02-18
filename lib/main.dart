import 'package:flutter/material.dart';
import './pages/homepage.dart';
void main() {
  runApp(MyApp());
}
//For local web(NO-CORS required) run use "--web-renderer html" flag.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //TODO set debugShowCheckedModeBanner to false
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}