import 'package:flutter/material.dart';

Widget additional() {
  return Container(
      padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
      height: 165,
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text( 'ADDITIONAL INFORMATION',
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          const SizedBox( height: 3, ),
          const Text('State'),
          const Text('Karnataka'),
          const SizedBox( height: 8,),
          const Text('Email'),
          const Text('greenecequa@gamil.com'),
          const SizedBox(height: 15, ),
          Container(
            height: 45,
            width: 400,
            padding:const EdgeInsets.fromLTRB(120, 15, 0, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: Colors.yellow,
              border: Border.all(color: Colors.blue)
            ),
            child: const Text('Share Receipt',
            style: TextStyle(color: Colors.blue,fontSize: 18),
            ),
          )
        ],
      ));
}
