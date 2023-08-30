import 'package:flutter/material.dart';
import 'package:ui/screens/1_on_1_screen.dart';
import 'package:ui/screens/group_screen.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Search name and username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TabBar(
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  labelColor: Colors.black,
                  tabs: [
                    Tab(
                      text: 'Group',
                    ),
                    Tab(
                      text: '1-on-1',
                    )
                  ]),
              const Expanded(
                child: TabBarView(children: [GroupScreen(), OneOnOneScreen()]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
