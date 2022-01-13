import 'package:flutter/material.dart';
import 'package:travel_app/screens/destination_details/destination_details_screen.dart';

import 'screens/home/home_screen.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  TravelApp({Key? key}) : super(key: key);
  String title = 'Morshedak';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'NotoSerif',
      ),
      debugShowCheckedModeBanner: false,
      title: title,
      initialRoute: HomeScreen.screenRoute,
      routes: {
        HomeScreen.screenRoute: (ctx) => const HomeScreen(),
        DestinationDetailsScreen.screenRoute: (ctx) =>
            const DestinationDetailsScreen(),
      },
    );
  }
}
