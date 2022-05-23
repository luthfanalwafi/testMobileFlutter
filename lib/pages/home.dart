import 'package:alwafitestmobileflutter/helper/colors.dart';
import 'package:alwafitestmobileflutter/helper/images.dart';
import 'package:alwafitestmobileflutter/widgets/bottom_navbar.dart';
import 'package:alwafitestmobileflutter/widgets/courses.dart';
import 'package:alwafitestmobileflutter/widgets/educators.dart';
import 'package:alwafitestmobileflutter/widgets/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget pageView(int index) {
    switch (index) {
      case 0:
        return Courses(itemLength: 3);
      case 1:
        return Center(
          child: Courses(itemLength: 1),
        );
      default:
        return Courses(itemLength: 3);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              title: Text(
                'Hello Satwik',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
              ),
              subtitle: Text(
                'What are you learning today ?',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              trailing: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage(rooney1),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: SearchWidget(),
          ),
          Column(
            children: [
              DefaultTabController(
                length: 2,
                initialIndex: _selectedIndex,
                child: TabBar(
                  tabs: [
                    Tab(
                      child: Text('My Courses'),
                    ),
                    Tab(
                      child: Text('Trending'),
                    ),
                  ],
                  onTap: _onItemTapped,
                ),
              ),
              pageView(_selectedIndex),
            ],
          ),
          Educators(),
        ],
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
