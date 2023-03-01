import 'package:flutter/material.dart';

Widget card(
      {String? mainText, String? text2, String? image, Widget? cardswitch}) {
    return Card(
        child: Container(
            height: 141,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(9)),
            padding: const EdgeInsets.all(9),
            child: Column(children: [
              Row(children: [
                Container(
                  height: 84,
                  width: 85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage(image!), fit: BoxFit.fill)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 83,
                  width: 230,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              mainText!,
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(
                              width: 39,
                            ),
                            const Icon(Icons.more_vert)
                          ],
                        ),
                        const Text(
                          '1 piece',
                          style: TextStyle(fontSize: 11),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(text2!),
                        Row(
                          children: [
                            const Text('In Stock',
                                style: TextStyle(color: Colors.green)),
                            const SizedBox(
                              width: 130,
                            ),
                            SizedBox(
                              height: 19,
                              width: 40,
                              child: cardswitch,
                            )
                          ],
                        ),
                      ]),
                )
              ]),
              const SizedBox(
                height: 6,
              ),
              Container(
                width: 320,
                height: 1,
                color:const Color.fromARGB(255, 200, 199, 197),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.share_outlined),
                  Text(' Share Product')
                ],
              )
            ])));
  }
