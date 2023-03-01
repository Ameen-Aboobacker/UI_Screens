import 'package:ui_samples/ui/screen3/exapnsion_tile.dart';
import 'package:ui_samples/ui/screen3/listtile.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:ui_samples/ui/screen4/expansion_tile.dart';

class Homescreen3 extends StatelessWidget {
  const Homescreen3 ({super.key});

  Widget button ({required text,required Color color}){
    return  ElevatedButton(onPressed: (){},
    style:ElevatedButton.styleFrom(backgroundColor:color, 
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(19.0))), child: Text(text),);
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title:const Text('Payments'),
        centerTitle: true,
        backgroundColor:const Color.fromARGB(255, 4, 133, 208) , 
        actions:const [
          Icon(Icons.info_outline)
        ],
      ),
      body:SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:const EdgeInsets.all(8),
                height:169,
                width: double.infinity,
                decoration: BoxDecoration(border:Border.all(color:const Color.fromARGB(255, 226, 223, 223)),borderRadius: BorderRadius.circular(9)),
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Text('Transaction Limit',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                 const  SizedBox(height: 3,),
                  const  Text('A Free limit up to which you will recieve',style: TextStyle(color:Color.fromARGB(255, 110, 107, 106),fontSize: 15),),
                  const  Text('the online payments directly in your bank',style: TextStyle(color:Color.fromARGB(255, 110, 107, 106),fontSize: 15),),
                  const  SizedBox(height: 13,),
                  const StepProgressIndicator(
                   totalSteps: 100,
                   currentStep: 32,
                   size: 8,
                  padding: 0,
                  selectedColor: Color.fromARGB(255, 4, 133, 208),
                   unselectedColor: Color.fromARGB(255, 217, 221, 222),
                   roundedEdges: Radius.circular(10),
              ),
                   const SizedBox(height: 5,),
                   const Text('36,668 left out of ₹50,000',style: TextStyle(color:Color.fromARGB(255, 143, 139, 138),fontSize: 15) ),
                   const SizedBox(height: 17,),
                   SizedBox(
                    height: 30,
                    width: 120 ,
                    child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor:const  Color.fromARGB(255, 4, 133, 208)), child:const Text('Increase limit'),))
                ]),
                ),
              const  SizedBox(height: 17,),
      
                Row(
                  children:const [
                    Text('Default Method',style: TextStyle(fontSize: 16,)),
                    SizedBox(width: 116 ,),
                    Text('Online Payments',style: TextStyle(color:Color.fromARGB(255, 143, 139, 138) ),),
                    Icon(Icons.arrow_forward_ios_outlined,color: Color.fromARGB(255, 143, 139, 138),),
                  ],
                ),
               const SizedBox(height: 20,),
                     Row(
                  children:const [
                    Text('Payment Profile',style: TextStyle(fontSize: 16,)),
                    SizedBox(width: 131 ,),
                    Text('Bank Account',style: TextStyle(color:Color.fromARGB(255, 143, 139, 138) ),),
                    Icon(Icons.arrow_forward_ios_outlined,color: Color.fromARGB(255, 143, 139, 138),),
                  ],
                ),
               const SizedBox(height: 16,),
                Container(
                  height: 1,
                  width: double.infinity,
                  color:const  Color.fromARGB(255, 220, 219, 218),
                ),
                const ExpansionTileSample(),
                  const SizedBox(height: 10,), 
                 const  Text('Transactions',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      button(text: 'On Hold', color:const Color.fromARGB(255, 196, 188, 188)),
                      const SizedBox(width: 15,),
                      button(text: 'Payouts(15)', color:const Color.fromARGB(255, 4, 133, 208)),
                      const SizedBox(width: 15,),
                      button(text: 'Refunds', color:const Color.fromARGB(255, 196, 188, 188)),
                    ],
                  ),
                 const  SizedBox(height: 14,),   
                const Listtile(item: '#16068', subitem:  'jul 12, 02:06 PM', 
                image: 'https://contents.mediadecathlon.com/p1484240/ab565f3675dbdd7e3c486175e2c16583/p1484240.jpg', trail: '799'),
                 const Listtile(item:'#14568', subitem: 'Fb 26, 07:47 AM', 
                image:'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXN8ZW58MHx8MHx8&w=1000&q=80', 
                trail: '899'),
                 const Listtile(item: '#16868', subitem:  'fb 19, 07:13 PM', 
                image: 'https://media.istockphoto.com/photos/luxury-watch-isolated-on-white-background-with-clipping-path-for-or-picture-id1180244659?k=20&m=1180244659&s=612x612&w=0&h=kC3xPwi_AXqWqapmeVro6GhvQ2wcslD6WMgzdJbqZjE=',
                 trail: '1,100'),
                 const Listtile(item: '#18068', subitem:  'jul 01, 04:34 PM', 
                image: 'https://contents.mediadecathlon.com/p1484240/ab565f3675dbdd7e3c486175e2c16583/p1484240.jpg', trail: '689'),
                 const Listtile(item: '#10367', subitem:  'jul 28, 05:23 PM', 
                image: 'https://media.istockphoto.com/photos/brown-teddy-bear-isolated-in-front-of-a-white-background-picture-id909772478?k=20&m=909772478&s=612x612&w=0&h=mzLuJ7ywrSDHmpchf9spOeNF2Ovr2aQBw1z57Szx17g=',
                 trail: '599'),
                 const Listtile(item: '#11068', subitem:  'jul 23, 09:34 PM', 
                image:'https://media.istockphoto.com/photos/white-mug-isolated-picture-id821282266?k=20&m=821282266&s=612x612&w=0&h=vc7HPB6Te8fSX-_TUFCXp5PYWQUtzTHdbiUJwybjRAA=',
                 trail: '129'), 
                  const Listtile(item: '#19408', subitem:  'jul 12, 02:06 PM', 
                image:'https://st.depositphotos.com/1455321/1564/i/950/depositphotos_15645257-stock-photo-yellow-toy-car.jpg',
                 trail: '449'), 
                 const Listtile(item:'#14568', subitem: 'Fb 26, 07:47 AM', 
                image:'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXN8ZW58MHx8MHx8&w=1000&q=80', 
                trail: '899'),
                 const Listtile(item: '#10367', subitem:  'jul 28, 05:23 PM', 
                image: 'https://media.istockphoto.com/photos/brown-teddy-bear-isolated-in-front-of-a-white-background-picture-id909772478?k=20&m=909772478&s=612x612&w=0&h=mzLuJ7ywrSDHmpchf9spOeNF2Ovr2aQBw1z57Szx17g=',
                 trail: '599'),   
              ], 
            ),         
          ),
      ),
      );
  }
}