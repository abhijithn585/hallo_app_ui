import 'package:flutter/material.dart';

class GroupScreen extends StatefulWidget {
  const GroupScreen({super.key});

  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300]),
                height: 35,
                width: 70,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Time',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300]),
                height: 35,
                width: 70,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Level',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300]),
                height: 35,
                width: 70,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Topic',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
        Container(
          child: Column(
            children: [
              Image.asset('assets/images/interview.webp'),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  ' Interview Preperation ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: Text('4.16(6)  ', style: TextStyle(color: Colors.grey)),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  ' Mon at 2:30PM.Work.B1',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/model18.jpg'),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '    Brenda',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.star_outline_rounded),
                          Icon(Icons.more_vert_rounded)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Column(
            children: [
              Image.asset('assets/images/interview.webp'),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  ' Interview Preperation ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: Text('4.16(6)  ', style: TextStyle(color: Colors.grey)),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  ' Mon at 2:30PM.Work.B1',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/model18.jpg'),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '    Brenda',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.star_outline_rounded),
                          Icon(Icons.more_vert_rounded)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
