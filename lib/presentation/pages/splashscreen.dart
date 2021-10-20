import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tafsier/presentation/pages/suraView.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Timer(Duration(seconds: 3),()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>QuranProject())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(height: double.infinity,width: double.infinity,
      child: Image.asset('assets/Default.png',fit: BoxFit.fill,),
    );
  }
}
