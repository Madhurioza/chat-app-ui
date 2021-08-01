import 'package:flutter/material.dart';

Widget storyButton(String imgUrl) {
  return Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imgUrl),
          radius: 26.0,
          child: Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Icon(
              Icons.circle,
              size: 10,
              color: Colors.green,
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
      ],
    ),
  );
}
