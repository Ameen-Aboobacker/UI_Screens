import 'package:flutter/material.dart';

class ExpansionTileSample extends StatelessWidget {
const ExpansionTileSample({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ExpansionTile(
        title: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const [
                    Text('Payments Overview',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
                    Text('Life Time',style: TextStyle(color:Color.fromARGB(255, 143, 139, 138) ),), 
                  ],
                ),
       children: [
        Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      height: 80,
                      width: 166, 
                      decoration: BoxDecoration(color:const  Color.fromARGB(255, 233, 143, 9),borderRadius: BorderRadius.circular(7)), 
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:const [
                          Text('AMOUNT ON HOLD',style: TextStyle(color: Color.fromARGB(255, 239, 238, 238)),),
                          SizedBox(height: 10,),
                          Text('₹0',style: TextStyle(color: Colors.white,fontSize: 22),)
                        ],
                      ),
                    ),
                    const SizedBox(width: 20,),
                     Container(
                      padding: const EdgeInsets.all(12),
                      height: 80,
                      width: 166,
                      decoration: BoxDecoration(color:const  Color.fromARGB(255, 45, 192, 89),borderRadius: BorderRadius.circular(7)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:const [
                        Text('AMOUNT RECIEVED',style: TextStyle(color: Color.fromARGB(255, 239, 238, 238)),),
                         SizedBox(height: 10,),
                          Text('₹13,332',style: TextStyle(color: Colors.white,fontSize: 22),)
                      ]),
                    ) 
                  ],),
        ],
       
      );
  }
}