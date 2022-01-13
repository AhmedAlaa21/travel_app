import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.transparent,
      leading: const CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage('assets/images/ahmed.jpg'),
        backgroundColor: Colors.transparent,
      ),
      title: const Padding(
        padding:  EdgeInsets.only(
          bottom: 3.0,
        ),
        child:  Text(
          'Welcome,',
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      subtitle: const Text(
        'Ahmed',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      enabled: false,
      isThreeLine: false,
      //TODO make the IconButton in stack to refer to notifications
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.notifications,
          color: Colors.grey,
        ),
      ),
    );
  }
}
