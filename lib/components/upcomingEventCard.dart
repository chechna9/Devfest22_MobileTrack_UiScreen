import 'package:flutter/material.dart';

class UpcomingEventCard extends StatelessWidget {
  const UpcomingEventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background3.png'),
          alignment: Alignment.topCenter,
          fit: BoxFit.fill,
        ),
      ),
      child: Row(children: [
        Image.asset(
          'assets/Event_label_image.png',
          fit: BoxFit.fitWidth,
        ),
        Expanded(
          child: Image.asset(
            'assets/text.png',
            fit: BoxFit.cover,
          ),
        ),
      ]),
    );
  }
}
