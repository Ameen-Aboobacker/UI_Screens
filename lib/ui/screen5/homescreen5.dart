import 'package:ui_samples/ui/screen5/customer.dart';
import 'package:ui_samples/ui/screen5/item.dart';
import 'package:ui_samples/ui/screen5/additional.dart';
import 'package:ui_samples/ui/screen5/date.dart';
import 'package:ui_samples/ui/screen5/total.dart';
import 'package:flutter/material.dart';


class homescreen5 extends StatelessWidget {
  const homescreen5({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: const Text( 'Order #1688068',style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              date(),  
              const Divider(thickness: 1,indent: 8,endIndent: 15,),
              item(),
              const Divider(thickness: 1,indent: 8,endIndent: 15,),
              total(),
              const Divider(thickness: 1,indent: 8,endIndent: 15,),
              customer(),
              const Divider(thickness: 1,indent: 8,endIndent: 15,),
              additional() 
            ],
          ),
        ),
      ),
    );
  }
}