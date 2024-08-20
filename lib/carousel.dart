import 'package:carousel_slider/carousel_slider.dart';
import 'package:dummy_app/listView.dart';
import 'package:dummy_app/someskelton/profilepage.dart';
import 'package:flutter/material.dart';

class carouselPage extends StatefulWidget {
  const carouselPage({super.key});

  @override
  State<carouselPage> createState() => _carouselPageState();
}

class _carouselPageState extends State<carouselPage> {
  List image = [
    "assets/images/Untitled design1.png",
    "assets/images/WhatsApp Image 2024-07-23 at 11.46.07_77db900b.jpg",
    "assets/images/WhatsApp Image 2024-07-24 at 12.04.41_aafadd2b.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
          items: image
              .map((item) => GestureDetector(
                    child: Image.asset(
                      item,
                      fit: BoxFit.cover,
                    ),
                    onTap: () {
                      if (item == image[0]) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListviewPage()));
                      } else if (item == image[1]) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GridPaper()));
                      } else if (item == image[2]) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Profilepage()));
                      }
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => ImageScreen(
                      //               fullimage: item,
                      //             )));
                    },
                  ))
              .toList(),
          options: CarouselOptions(
              height: 800,
              enlargeCenterPage: true,
              autoPlay: true,
              enableInfiniteScroll: true)),
    );
  }
}

class ImageScreen extends StatelessWidget {
  String fullimage;
  ImageScreen({super.key, required this.fullimage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(fullimage),
    );
  }
}
