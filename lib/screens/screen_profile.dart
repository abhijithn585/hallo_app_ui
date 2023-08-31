import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 60,
                color: Colors.grey,
                child: Text(
                  'JERRY',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Container(
                child: Row(
                  children: [Icon(Icons.calendar_month)],
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
