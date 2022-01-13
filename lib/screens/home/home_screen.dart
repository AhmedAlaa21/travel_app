import 'package:flutter/material.dart';

import 'home_sections/recommended_list.dart';
import 'home_sections/recommended_section.dart';
import 'home_sections/search_section.dart';
import 'home_sections/top_destination_list.dart';
import 'home_sections/welcome_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const screenRoute = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.blue,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.compass_calibration_outlined,
              color: Colors.grey,
            ),
            label: 'Compass',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.badge_rounded,
              color: Colors.grey,
            ),
            label: 'Compass',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
            label: 'Compass',
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 45,
          bottom: 15,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 3,
          vertical: 1,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const WelcomeSection(),
            _divider(
              20.0,
            ),
            const SearchSection(),
            _divider(
              20.0,
            ),
            const RecommendedAndTopDestinationSection(
              sectionTitle: 'Recommended',
            ),
            _divider(
              20.0,
            ),
            const RecommendedList(),
            _divider(
              20.0,
            ),
            const RecommendedAndTopDestinationSection(
              sectionTitle: 'Top Destination',
            ),
            _divider(
              20.00,
            ),
            const TopDestinationList(),
          ],
        ),
      ),
    );
  }

  SizedBox _divider(double height) {
    return SizedBox(
      height: height,
    );
  }
}
