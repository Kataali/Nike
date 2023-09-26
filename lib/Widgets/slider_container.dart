import 'dart:math' as math;

import 'package:flutter/material.dart';

class SliderContainer extends StatelessWidget {
  List sliderImages = [
    "images/Green 1.png",
    "images/Yellow Shoe.png",
    "images/toppng.png"
  ];
  int index = 0;
  SliderContainer({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      //clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
          padding: const EdgeInsets.all(10),
          width: 334,
          height: 200,
          decoration: ShapeDecoration(
            color: const Color(0xFFEFEFEF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "20% Discount",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      fontFamily: 'Work Sans'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  "On your first purchase",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Work Sans',
                  ),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Shop now",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
        Transform.rotate(
          //transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.52),
          angle: -math.pi / 60,
          child: Container(
            width: 195.17,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  sliderImages[index],
                ),
                //fit: BoxFit.fill,
              ),
              //child: Image.asset(sliderImages[index],
            ),
          ),
        ),
      ],
    );
  }
}
