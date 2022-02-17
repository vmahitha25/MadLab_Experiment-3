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
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'List View',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
          backgroundColor: Colors.indigoAccent,
        ),
        body: 
       ListView(
        padding: const EdgeInsets.all(10),
        shrinkWrap: true,
        children: const[
          Card(
            child: ListTile(title: Text("Item 1")),
          ),
         Card(
            child: ListTile(title: Text("Item 2")),
          ),
         Card(
            child: ListTile(title: Text("Item 3")),
          ),
          ],
        ) 
      )
    );
  }
}
