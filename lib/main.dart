import 'package:flutter/material.dart';
import 'splash-screen-app.dart';

void main() {
  //splash screen app is called and after service initialization is done it will call runMainApp
  runApp(SplashScreenApp(
    initializationDoneCallback: runMainApp,
  ));
}

void runMainApp() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter structure',
      theme: ThemeData(),
      home: MyHomePage(title: 'flutter project structure'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(),
    );
  }
}
