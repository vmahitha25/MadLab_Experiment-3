import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Widget'),
          backgroundColor: Colors.indigoAccent,
        ),
        body: const Padding(  
            padding: EdgeInsets.all(30.0),  
            child: Text('Hello World, Mahitha here!',
            style: TextStyle(color:Colors.black, 
            fontStyle: FontStyle.normal,
            fontSize: 24)
            ),  
          ),  
      )  
    );
  }
}
