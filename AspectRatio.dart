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
          title: const Text('Aspect Ratio Widget'),
          backgroundColor: Colors.blue,
        ),
        body: 
        AspectRatio(  
        aspectRatio: 3/2,  
        child: Container(
          color: Colors.indigoAccent,  
            )
          ) 
      ) 
    );
  }
}
