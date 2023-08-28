import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui/screens/screen_course.dart';
import 'package:ui/screens/screen_explore.dart';
import 'package:ui/screens/screen_profile.dart';
import '../widgets/bottom_nav_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  final imagePaths = [
    'assets/images/homeslide1.png',
    'assets/images/homeslide2.png',
    'assets/images/homeslide3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset('assets/images/american_flag.png')),
        ),
        actions: [
          Icon(
            Icons.local_fire_department_sharp,
            color: Colors.grey,
          ),
          Text(
            '10',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.messenger_outline,
            color: Colors.grey,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                CarouselSlider.builder(
                  itemCount: imagePaths.length,
                  itemBuilder: (context, index, realIndex) {
                    final imagePath = imagePaths[index];
                    return buildImage(imagePath, index);
                  },
                  options: CarouselOptions(
                    height: 150,
                    autoPlay: true,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index),
                  ),
                ),
                builderIndicator()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget builderIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imagePaths.length,
        effect: WormEffect(
          dotWidth: 10,
          dotHeight: 10,
          activeDotColor: Colors.black,
          dotColor: Colors.grey,
        ),
      );

  Widget buildImage(String imagepath, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        color: Colors.grey,
        child: Image.asset(
          imagepath,
          fit: BoxFit.fill,
        ),
      );
}
