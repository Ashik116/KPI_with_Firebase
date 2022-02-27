import 'package:ashik/newpage.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final snackBar = SnackBar(
    content: Text("ABR Click Kora Hoise"),
  );
  final ssnackBar = SnackBar(
    content: Text("ABR Click Kora Hoise 2nd time"),
  );

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SnackBAr"),),
      body: Center(
        child: Builder(
          builder: (context)=>Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlatButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }, child: Text("Click"),
              textColor: Colors.green,
                padding: EdgeInsets.all(30),
                height: 500,
              ),
              RaisedButton(onPressed: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>Ashik()), (route) => false);
                ScaffoldMessenger.of(context).showSnackBar(ssnackBar);
              }),
            ],
          ),
        ),
      ),

    );
  }
}
