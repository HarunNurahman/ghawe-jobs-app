import 'package:flutter/material.dart';
import 'package:ghawejobapp/pages/explore_screen.dart';
import 'package:ghawejobapp/pages/home_screen.dart';
import 'package:ghawejobapp/pages/myapplicants_screen.dart';
import 'package:ghawejobapp/pages/profile_screen.dart';
import 'package:ghawejobapp/pages/savedjobs_screen.dart';
import 'package:ghawejobapp/shared/config.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  final pagesList = [
    HomeScreen(),
    SavedJobsScreen(),
    ExploreScreen(),
    MyApplicantScreen(),
    ProfileScreen()

  ];

  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagesList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFFC4C4C4),
        selectedItemColor: kPrimaryColor,
        iconSize: 24,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          _bottomNavigationBarItems(icon: Icons.home, label: ''),
          _bottomNavigationBarItems(icon: Icons.star, label: ''),
          _bottomNavigationBarItems(icon: Icons.explore, label: ''),
          _bottomNavigationBarItems(icon: Icons.file_copy, label: ''),
          _bottomNavigationBarItems(icon: Icons.person, label: ''),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

_bottomNavigationBarItems({required IconData icon, required String label}) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    label: label,
  );
}
