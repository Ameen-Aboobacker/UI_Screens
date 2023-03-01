import 'package:flutter/material.dart';
import 'package:ui_samples/ui/screen6/card.dart';

class Screen6 extends StatelessWidget {
  const Screen6({super.key});


    
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Catalogue'),
          centerTitle: true,
          actions: const [
            Icon(
              Icons.search,
              size: 28,
            )
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                  child: Text(
                'Products',
                style: TextStyle(fontSize: 17),
              )),
              Tab(child: Text('Categories', style: TextStyle(fontSize: 17))),
            ],
          ),
        ),
        body: 
          TabBarView(
            children: [ Container(
             color: const Color.fromARGB(255, 241, 240, 239),
             padding:const EdgeInsets.all(11),
              child: ListView(children: [
              card(
                  mainText: 'Couch Potato | Women..',
                  text2: '₹799',
                  image: 'assets/images/image1.jpeg',
                  cardswitch: Switch(value: true, onChanged: ((value) {
                    false;
                  })
                  ),
                  ),
              card(
                  mainText: 'Couch Potato | Men |Bl.. ',
                  text2: '₹799',
                  image: 'assets/images/image2.jpeg',
                  cardswitch: Switch(value: true, onChanged: ((value) {
                    false;
                  }),
                  ),
                  ),
              card(
                  mainText: 'Mug|Explore                     ',
                  text2: '₹399',
                  image: 'assets/images/image3.jpeg',
                  cardswitch: Switch(value: true, onChanged: ((value) {
                    false;
                  })
                  ),),
              card(
                  mainText: 'Combo Blahst 2 | Expla..',
                  text2: '₹599',
                  image: 'assets/images/image4.jpeg',
                  cardswitch: Switch(value: true, onChanged: ((value) {
                    false;
                  })
                  ),),
              card(
                  mainText: 'Kids Combo Blahst         ',
                  text2: '₹1,299',
                  image: 'assets/images/image5.jpeg',
                  cardswitch: Switch(value: true, onChanged: ((value) {
                    false;
                  })
                  ),),
              card(
                  mainText: 'Mug|Explore                     ',
                  text2: '₹399',
                  image: 'assets/images/image6.jpg',
                  cardswitch: Switch(value: true, onChanged: ((value) {
                    false;
                  })
                  ),),
            ]),
                  ),
                  const Text(''),
                  ],
                
                  
          ),
      ),
    );
  }
}
