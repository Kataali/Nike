import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:nike_ui/Widgets/slider_container.dart';
import 'package:nike_ui/Widgets/shoe_widget.dart';
import 'package:nike_ui/Widgets/bottom_appbar.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}


class _WelcomeScreenState extends State<WelcomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      // appBar: AppBar(
      //   leading: Row(
      //     children: [
      //       //appBarImageContainer(child: Image.asset('images/fi-rr-align-left.svg', fit: BoxFit.fill)),
      //       //appBarImageContainer(child: Image.asset('images/Nike icon mark.png', fit: BoxFit.fill)),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(color: Colors.red,
      //             width: 36,
      //             height: 34,
      //             child: Image.asset('images/fi-rr-align-left.png')),
      //       ),
      // Container(
      //   width: 62,
      //   height: 47.23,
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage('images/Nike icon mark.png'),
      //       fit: BoxFit.fill,
      //     ),
      //   ),
      // )
      //       Expanded(
      //           child: Image.asset('images/Nike icon mark.png'),
      //       ),
      //     ],
      //   ),
      //
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Row(
              children: [ Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 36,
                    height: 34,
                    //child: Image.asset('images/fi-rr-align-left.png')
                    child: IconButton(
                            padding: EdgeInsets.all(1),
                            style: IconButton.styleFrom(backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
                            ),
                            ),
                            onPressed: (){},
                            icon: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: const Icon(Icons.format_align_left_outlined, size: 30),
                            ),
                    ),
                    ),
                    
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 62,
                    height: 47.23,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/Nike icon mark.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                )],
            ),
                IconButton(
                  padding: EdgeInsets.all(1),
                  style: IconButton.styleFrom(backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
                    ),

                  ),
                  onPressed: (){},
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Icon(Icons.shopping_bag_outlined, size: 30),
                  ),
                ),
            // const Padding(
            //   padding: EdgeInsets.all(8.0),
            //   child: Icon(Icons.),
            // ),
            ],),
            //ImageSlideshow(children: []),
            ImageSlideshow(
                indicatorPadding: 10,
                indicatorColor: Colors.transparent,
                height: 200,
                width: 380,
                autoPlayInterval: 4000,
                indicatorBackgroundColor: Colors.blue,
                indicatorRadius: 4,
                isLoop: true,
                children: [
                  Container(
                    // padding: EdgeInsets.all(10),
                    // flex: 1,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, int index) {
                          index++;
                          return SliderContainer(index: _currentIndex);
                        },
                        separatorBuilder: (context, index) {
                          return const Divider(
                            thickness: 30,
                          );
                        },
                      ),
                  ),
                ]
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(onPressed: (){}, style:  TextButton.styleFrom(backgroundColor: Colors.black, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))), child: const Text("All", style: TextStyle(fontSize: 16, color: Colors.white),)),
                    TextButton(onPressed: (){}, child: const Text("Running", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w300),),),
                    TextButton(onPressed: (){}, child: const Text("Sneakers", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w300),),),
                    TextButton(onPressed: (){}, child: const Text("Formal", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w300),),),
                    TextButton(onPressed: (){}, child: const Text("Casual", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w300),))
                  ],
                ),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              primary: false,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 25,
              childAspectRatio: 3 / 4,
              padding: const EdgeInsets.all(20),
              children: [
                const ShoeWidget(image: "images/Yellow Shoe.png", name: "Air-max 97", price: 20.99),
                const ShoeWidget(image: "images/15947562_30161559_1000-removebg-preview 1.png", name: "React Presto", price: 20.99),
                const ShoeWidget(image: "images/toppng.png", name: "React Presto", price: 20.99),
                const ShoeWidget(image: "images/Shoe 1.png", name: "React Presto", price: 20.99),
                Container(
                  decoration: ShapeDecoration(
                    color: const Color(0xFFEFEFEF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                )
              ],
            ),
          ],),
        ),
      ),

          bottomNavigationBar: bottomNavBar,
    );
  }
}
