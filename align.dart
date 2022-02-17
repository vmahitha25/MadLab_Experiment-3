import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return MaterialApp(
  title: 'Align Demo',
  theme: ThemeData(
    primarySwatch: Colors.blue,
  ),
  home: MyDemo(),
  debugShowCheckedModeBanner: false,
  );
}
}
 
class MyDemo extends StatefulWidget {
@override
_MyDemo createState() => _MyDemo();
}
 
class _MyDemo extends State<MyDemo> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Align Widget'),
      backgroundColor: Colors.blue),
    body: Center(
      child: Container(
    height: 120.0,
    width: 120.0,
    color: Colors.indigoAccent,
    child: const Align(
      alignment: Alignment.topLeft,
      child: Text(
      "Align Widget",
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        )
      )
    );
  }
}