import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopDestinationContainer extends StatelessWidget {
  const TopDestinationContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
      width: 200,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        //color: Colors.blue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/images/3.jpg'), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Expanded(
            child: Column(children: const [
              SizedBox(
                height: 13,
              ),
              Text(
                'Telaga',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 21),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Bandung',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 16,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
