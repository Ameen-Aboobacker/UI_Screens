import 'package:flutter/material.dart';

 Widget listTile(
      {required IconData leadingIcon,
      required String title,
      required String subtitle}){
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
        radius: 25,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 22,
          child: Icon(
            leadingIcon,
            color: Colors.blue,
          ),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }