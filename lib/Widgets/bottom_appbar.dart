import 'package:flutter/material.dart';

Widget bottomNavBar = BottomAppBar(
  color: Colors.white,
  child: Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.home_outlined,
            size: 30,
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.bookmark_border_outlined, size: 30)),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined, size: 30)),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_2_outlined, size: 30))
      ],
    ),
  ),
);
