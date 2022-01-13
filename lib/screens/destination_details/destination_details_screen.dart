import 'package:flutter/material.dart';
import 'package:travel_app/screens/home/home_sections/top_destination_list.dart';
import 'package:travel_app/ui_model/widgets/my_details_container.dart';

class DestinationDetailsScreen extends StatelessWidget {
  const DestinationDetailsScreen({Key? key}) : super(key: key);
  static const String screenRoute = 'destination_details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
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
        child: Column(
          children: [
            const MyDetailsContainer(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                left: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sectionText('About'),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Modern Destination, with sky landscape,\n Simple Building, and perfect for photos.',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  sectionText('Gallery'),
                  //TODO list view of pictures(Gallery)..
                  const SizedBox(
                    height: 20,
                  ),
                  const TopDestinationList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text sectionText(String text) {
    return Text(
      text,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        color: Color(0xff0E1446),
        letterSpacing: 1.5,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
