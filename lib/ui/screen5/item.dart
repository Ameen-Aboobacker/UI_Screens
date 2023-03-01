import 'package:flutter/material.dart';

Widget item(){
  return Container(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
    height: 130,width: 500,
    child: Column(children:  [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
        const Text('1 ITEM',style: TextStyle(color: Colors.grey),),
        Row( children: const [
          Icon(Icons.receipt_outlined,color: Colors.blue,),
           SizedBox( width: 10, ),
          Text('RECIEPT',style: TextStyle(color: Colors.blue))

        ],)
      ],),
      const SizedBox(height: 20,),
      Row(
        children: [
          Container(height: 60,width: 60,
           decoration:  BoxDecoration(border:Border.all(color: Colors.grey,),borderRadius: BorderRadius.circular(3),),
          child: Image.asset('assets/tshirt1.jpg',fit: BoxFit.cover,),
          ),
          const SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Explore | Men | Navy Blue',style: TextStyle(fontSize: 18)),
              const Text('1 Piece',style: TextStyle(color: Color.fromARGB(255, 124, 122, 122)),),
              const Text('Size: XL',style: TextStyle(color: Color.fromARGB(255, 124, 122, 122))),
             Row(
               children:const [
                Icon(Icons.looks_one_outlined,color: Color.fromARGB(255, 102, 175, 234),),
                SizedBox(width: 5,),
                Text('× ₹799'),
                SizedBox(width: 160,),
                 Text('₹799')
               ],
             ),
            ],
          )
        ],
      )
    ],),
  );
}