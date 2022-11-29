import 'package:devfest_challenges/models/event_model.dart';
import 'package:flutter/material.dart';

class UpcomingEventCard extends StatelessWidget {
  final EventModele event;
  const UpcomingEventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background3.png'),
          alignment: Alignment.topCenter,
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(children: [
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
          Positioned(
            child: Text(
              event.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
