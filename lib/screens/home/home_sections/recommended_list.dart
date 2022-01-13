import 'package:flutter/material.dart';
import 'package:travel_app/ui_model/widgets/recommended_container.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .32,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (ctx, index) {
            return const RecommendedContainer();
          }),
    );
  }
}
