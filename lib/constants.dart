import 'package:flutter/material.dart';

class appBarImageContainer extends StatelessWidget {
  const appBarImageContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50,
        height: 64.23,
decoration: const BoxDecoration(
// image: DecorationImage(
// image: NetworkImage("https://via.placeholder.com/62x47"),
// fit: BoxFit.fill,
),
 );
    }
}
