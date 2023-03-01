import 'package:flutter/material.dart';
Widget date() {
  return Container(
    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
    height: 50, width: 500,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text( 'May 31, 5:42  PM', style: TextStyle(fontSize: 18), ),
        Row(
          children: const [
            Icon( Icons.lens, color: Colors.blue,size: 15, ),
            SizedBox( width: 10, ),
            Text('Delivered ',style: TextStyle(fontSize: 18, color: Colors.grey)),
          ],
        )
      ],
    ),
  );
}
