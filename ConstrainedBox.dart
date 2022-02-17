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
          title: const Text('ConstrainedBox Widget'),
          backgroundColor: Colors.blue,
        ),
        body: 
        ConstrainedBox( 
          constraints: const BoxConstraints( 
          minHeight: 200.0, 
          minWidth: 200.0, 
          maxHeight: 450.0, 
          maxWidth: 450.0, 
          ), 
          child: const DecoratedBox( 
          decoration: const BoxDecoration(color: Colors.indigoAccent), 
          child: Text('Hello World, Mahitha here!', 
            style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.normal,
             fontSize: 24
            )
          )
          ), 
        ),
      ), 
    );
  }
}
