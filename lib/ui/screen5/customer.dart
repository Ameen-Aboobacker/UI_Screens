import 'package:flutter/material.dart';

Widget customer(){
  return Container(
     padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
    height: 220,width: 400,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children:const [
            Text('CUSTOMER  DETAILES',style: TextStyle(color: Colors.grey),),
            SizedBox(width: 140,),
            Icon(Icons.share_outlined,color: Colors.blue,),
            SizedBox(width: 1,), 
            Text('SHARE',style: TextStyle(color: Colors.blue))
          ],
        ),
       const SizedBox(height: 5,),
       const Text('Deepa',style: TextStyle(fontSize: 18),),
       Row(
        children:const [
           Text('+91-703452499',style: TextStyle(color: Colors.grey),),SizedBox(width: 180,),
          Icon(Icons.call,color: Colors.blue,),SizedBox(width: 20,),
          Icon(Icons.call,color: Colors.green,),
        ],
       ),
       const SizedBox(height: 5,),
       const Text('Address',style: TextStyle(fontSize: 16)),
       const SizedBox(height: 5,),
       const Text('D 1101 Chattered Beverly',style:  TextStyle(color: Color.fromARGB(255, 88, 85, 85))),
       const Text('Hills,Subramanyapura P.O',style: TextStyle(color: Color.fromARGB(255, 88, 85, 85))),
       const SizedBox(height: 9,),
       Row(
        children:const [
          Text('City'),
          SizedBox(width: 120,),
          Text('Pincode'),
        ],
       ),
       Row(
        children:const [
          Text('Banglore',style:  TextStyle(color: Color.fromARGB(255, 88, 85, 85))),
          SizedBox(width: 87,),
          Text('560061',style:  TextStyle(color: Color.fromARGB(255, 88, 85, 85))),
        ],
       ),
       const SizedBox(height: 5,),
       //const Text('Payment'),
       Row(
        children: [
          const Text('Payment\nOnline'),
          const SizedBox(width: 245,),
          Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),color:const Color.fromARGB(255, 201, 245, 203)),
            padding:const EdgeInsets.fromLTRB(15, 4, 0, 0) ,            
            height: 23,width: 60,
            child:const Text('PAID',style: TextStyle(color: Color.fromARGB(255, 6, 173, 12),fontWeight: FontWeight.w700),),
          )
        ],
       )
      ],
    )
  );
}

