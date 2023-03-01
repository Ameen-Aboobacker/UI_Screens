import 'package:flutter/material.dart';
 Widget total(){
  return Container(
    padding:const EdgeInsets.fromLTRB(10, 10, 10, 0),
    height: 100,width: 400,
    child:Column(
      children: [
        Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:const [
            Text('Item Total'),
            Text('₹799')
          ],
        ),
        const SizedBox(height: 10,),
       Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:const [
            Text('Delivery'),
            Text('FREE',style: TextStyle(color: Colors.green),)
          ],
        ),
        const SizedBox(height: 10,),
        Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:const [
            Text('Grand Total',style: TextStyle(fontSize: 20),),
            Text('₹799',style: TextStyle(fontSize: 20))
          ],
        ),
      ],
    )
  );
}