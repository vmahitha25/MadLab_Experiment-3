import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Experiment 3',
     theme: ThemeData(
       primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'List View with Images'),
   );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage ({Key? key, required this.title}): super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() => _MyHomePageState();  
}

class _MyHomePageState extends State<MyHomePage> {
  List <String> images = [
    "images/harry.jpg",
    "images/ron.jpg",
    "images/hermione.jpg",
    "images/ginny.jpg",
    "images/luna.jpg",
    "images/neville.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.indigoAccent,
      ),
        body: ListView.builder(
          itemBuilder: (buildcontext, index){
            return Card(
              child:  ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),
                ),
                title: const Text("Student Name"),
                subtitle: const Text("Roll No."),
              ),
              );
          },
          itemCount: images.length,
          shrinkWrap: true,
          padding: const EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
          )
      );
  }
}