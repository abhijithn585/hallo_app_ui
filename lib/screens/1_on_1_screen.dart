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
            children: const [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/model9.jpg'),
                      radius: 25,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Vanessa',
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
                      backgroundImage: AssetImage('assets/images/model10.jpg'),
                      radius: 25,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Troy',
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
                      backgroundImage: AssetImage('assets/images/model11.jpg'),
                      radius: 25,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Ben',
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
                      backgroundImage: AssetImage('assets/images/model12.jpg'),
                      radius: 25,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Jameshia',
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
                      backgroundImage: AssetImage('assets/images/model13.jpg'),
                      radius: 25,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Adam',
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
                      backgroundImage: AssetImage('assets/images/model14.jpg'),
                      radius: 25,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Jordan',
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
                      backgroundImage: AssetImage('assets/images/model15.jpg'),
                      radius: 25,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Paul',
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
                      backgroundImage: AssetImage('assets/images/model16.jpg'),
                      radius: 25,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Lois',
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
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/model17.jpg'),
                  radius: 40,
                ),
                Container(
                  child: Image.asset(
                    'assets/images/United_States_-_Rounded_Flag.svg.png',
                    height: 30,
                    width: 30,
                  ),
                ),
                Container(child: Text('July'))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
