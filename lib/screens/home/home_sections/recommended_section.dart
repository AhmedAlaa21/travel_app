import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendedAndTopDestinationSection extends StatelessWidget {
  const RecommendedAndTopDestinationSection({
    required this.sectionTitle,
    Key? key,
  }) : super(key: key);
  final String sectionTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            sectionTitle,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              size: 30,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
