import 'package:flutter/material.dart';
import 'package:travel_app/screens/destination_details/destination_details_screen.dart';
import 'package:travel_app/screens/home/home_sections/top_destination_container.dart';

class TopDestinationList extends StatelessWidget {
  const TopDestinationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .11,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (ctx, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  DestinationDetailsScreen.screenRoute,
                );
              },
              child: const TopDestinationContainer(),
            );
          }),
    );
  }
}
