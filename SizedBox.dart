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
          title: const Text('Sized Box Widget'),
          backgroundColor: Colors.indigoAccent,
        ),
        body: const SizedBox(  
        width: 300.0,  
        height: 450.0,  
        child: Card(child: Text('Hello World, Mahitha here!',
        style: TextStyle(
          color: Colors.blue,
          fontStyle: FontStyle.italic,
          fontSize: 24
        ),
        )
        ),
        ) 
      )  
    );
  }
}
