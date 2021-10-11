import 'package:flutter/material.dart';

class SplashScreenApp extends StatefulWidget {
  final Function _initializationDoneCallback;
  const SplashScreenApp({required Function initializationDoneCallback})
      : this._initializationDoneCallback = initializationDoneCallback;

  @override
  _SplashScreenAppState createState() => _SplashScreenAppState();
}

class _SplashScreenAppState extends State<SplashScreenApp> {
  @override
  void initState() {
    _initializeServices();
    super.initState();
  }

  Future _initializeServices() async {
    //here we initialize all our services, all async calls should be awaited
    widget._initializationDoneCallback();
    //the _initializationDoneCallback call will start building our main app
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "project structure",
      theme: ThemeData(),
      home: body(),
    );
  }

  Widget body() {
    return Container(
        //here we can show a loading indicator while our services initialize
        );
  }
}
