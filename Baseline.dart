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
          title: const Text('Baseline Widget'),
          backgroundColor: Colors.blue,
        ),
        body: 
        Baseline(  
         baseline: 50.0,  
         baselineType: TextBaseline.alphabetic,  
         child: Container(  
              height: 80,  
              width: 120,  
              color: Colors.indigoAccent,  
         ),  
       ),
      ), 
    );
  }
}
