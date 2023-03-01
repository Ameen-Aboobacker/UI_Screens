import 'package:flutter/material.dart';
Widget expansionTile({required String title}) {
    return ExpansionTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      children: const [
        Text(
          '''Dukaan caters to a wide variety of sellers . Be it a 
small grocery store ot a big legacy brand-anyone 
who wants to sell their products/services online - 
Dukaan is the perfect platform for you''',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }