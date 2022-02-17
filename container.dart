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
        body: Center(
          child: Container(
          height: 110.0,
          width: 110.0,
          color: Colors.blue,
          child: const Align(
          alignment: Alignment.topLeft,
          child: FlutterLogo(
          size: 50,
           ),
         ),
       ),
     )
   )  
  );
 }
}