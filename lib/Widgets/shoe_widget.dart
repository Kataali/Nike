import 'package:flutter/material.dart';

class ShoeWidget extends StatelessWidget {
  const ShoeWidget(
      {super.key,
      required this.image,
      required this.name,
      required this.price});
  final String image;
  final String name;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 160,
      height: 200,
      decoration: ShapeDecoration(
        color: const Color(0xFFEFEFEF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      child: Column(children: [
        Image.asset(image),
        Row(
          children: [
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
            )
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$$price",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15)),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_outlined),
              )
            ],
          ),
        )
      ]),
    );
  }
}
