import 'package:ui_samples/ui/screen1/screen1.dart';
import 'package:ui_samples/ui/screen2/screen2.dart';
import 'package:ui_samples/ui/screen3/home_screen3.dart';

import 'package:ui_samples/ui/screen4/homescreen4.dart';
import 'package:ui_samples/ui/screen5/homescreen5.dart';
import 'package:ui_samples/ui/screen6/screen6.dart';
import 'package:flutter/material.dart';


class Homescreen extends StatelessWidget {
  const Homescreen ({super.key});

  Widget button(String text,void Function() onPressed){
    return  ElevatedButton(
              onPressed: onPressed,
              child: Text(text),
            );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('SCREENS'),
      ),
      body:SafeArea(
       child: Center(
         child: Column(
          
           children: [ 
            const SizedBox(height: 45,), 
           button("SCREEN 1", () {Navigator.of(context).push(MaterialPageRoute(builder: ((ctx) => const Screen1())));}),
           const SizedBox(height: 10,), 
           button("SCREEN 2", () {Navigator.of(context).push(MaterialPageRoute(builder: ((ctx) =>  const Screen2())));}),
          const SizedBox(height: 10,), 
           button("SCREEN 3", () {Navigator.of(context).push(MaterialPageRoute(builder: ((ctx) => const Homescreen3())));}),
          const SizedBox(height: 10,), 
           button("SCREEN 4", () {Navigator.of(context).push(MaterialPageRoute(builder: ((ctx) =>  Screen4())));}),
           const SizedBox(height: 10,), 
           button("SCREEN 5", () {Navigator.of(context).push(MaterialPageRoute(builder: ((ctx) => const homescreen5())));}),
           const SizedBox(height: 10,), 
           button("SCREEN 6", () {Navigator.of(context).push(MaterialPageRoute(builder: ((ctx) => const  Screen6())));}),
           ], 
         ),
       ), 
      ) ,
    );
  }
}