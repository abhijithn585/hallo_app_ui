import 'package:flutter/material.dart';

class OneOnOneScreen extends StatefulWidget {
  const OneOnOneScreen({super.key});

  @override
  State<OneOnOneScreen> createState() => _OneOnOneScreenState();
}

class _OneOnOneScreenState extends State<OneOnOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            ' New Teachers',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )),
        Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              teachersList(
                  image1: "assets/images/model9.jpg", text1: 'Vanessa'),
              teachersList(image1: "assets/images/model10.jpg", text1: 'Troy'),
              teachersList(image1: "assets/images/model11.jpg", text1: 'Ben'),
              teachersList(
                  image1: "assets/images/model12.jpg", text1: 'Jameshia'),
              teachersList(image1: "assets/images/model13.jpg", text1: 'Adam'),
              teachersList(
                  image1: "assets/images/model14.jpg", text1: 'Jordan'),
              teachersList(image1: "assets/images/model15.jpg", text1: 'Payl'),
              teachersList(image1: "assets/images/model16.jpg", text1: 'Lois'),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    listview(
                        image1: 'assets/images/model21.jpg',
                        image2: 'assets/images/american_flag.png',
                        text1: 'July',
                        text2: '4.98',
                        text3:
                            'Hi, i earned my Bachelor of Science in Business Management before raising four childern.........'),
                    Divider(),
                    listview(
                        image1: 'assets/images/model26.jpg',
                        image2: 'assets/images/american_flag.png',
                        text1: 'Sebe',
                        text3:
                            'Its nice to meet you! My name is T.sebe I am a good listener with great communication.....',
                        text2: '4.78'),
                    Divider(),
                    listview(
                        image1: 'assets/images/model22.jpg',
                        image2: 'assets/images/american_flag.png',
                        text1: 'Patricia',
                        text3:
                            'Hi, iam Pratrica and i am a certified TEFL teacher,i hold a ',
                        text2: '4.98s'),
                    Divider(),
                    listview(
                        image1: 'assets/images/model25.jpg',
                        image2: 'assets/images/american_flag.png',
                        text1: 'hbdhwebweb',
                        text2: 'hkhgedhgwedggh',
                        text3: 'ededekwdedh'),
                    Divider(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column teachersList({
    String? image1,
    String? text1,
  }) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(image1!),
            radius: 25,
          ),
        ),
        SizedBox(height: 5),
        Text(
          text1!,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Container listview(
      {required String image1,
      String? image2,
      String? text1,
      String? text2,
      String? text3}) {
    return Container(
      child: Column(
        children: [
          Container(),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(image1),
                radius: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Image.asset(
                  image2!,
                  height: 30,
                  width: 30,
                ),
              ),
              Column(
                children: [
                  Container(child: Text(text1!)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(text2!)
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(alignment: Alignment.topLeft, child: Text(text3!))
        ],
      ),
    );
  }
}
