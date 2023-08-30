import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
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
        actions: const [
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
          const SizedBox(
            height: 30,
          ),
          Column(
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
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/model1.jpg'),
                        radius: 25,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Abhi',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/model2.jpg'),
                        radius: 25,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'David',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/model3.jpg'),
                        radius: 25,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Rythin',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/model4.jpg'),
                        radius: 25,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Joseph',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/model5.jpg'),
                        radius: 25,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Jobin',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/model6.jpg'),
                        radius: 25,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Sam',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/model7.jpg'),
                        radius: 25,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Rima',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/model8.jpg'),
                        radius: 25,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Jagan',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              ListTile(
                leading: Image.asset(
                  'assets/images/customerservice.png',
                ),
                title: const Text(
                  'InstaLesson',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: const Text('1-on-1 lessons with a native teacher'),
                trailing: const Text(
                  'Paid',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0.5),
                ),
                child: ListTile(
                  leading: Image.asset('assets/images/customerservice2.png'),
                  title: const Text(
                    'InstaMatch',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  subtitle:
                      const Text('Unlimited practice with other students'),
                  trailing: const Text(
                    'Free',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ListTile(
                leading: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.filter_alt_outlined),
                  label: const Text('Filter'),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                  ),
                ),
                trailing: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.list),
                  label: const Text('InstaLog'),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.grey)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                    fixedSize: MaterialStateProperty.all(const Size(200, 50))),
                child: const Text('Start InstaMatching'),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget builderIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imagePaths.length,
        effect: const WormEffect(
          dotWidth: 10,
          dotHeight: 10,
          activeDotColor: Colors.black,
          dotColor: Colors.grey,
        ),
      );

  Widget buildImage(String imagepath, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.grey,
        child: Image.asset(
          imagepath,
          fit: BoxFit.fill,
        ),
      );
}
