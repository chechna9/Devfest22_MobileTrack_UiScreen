import 'package:devfest_challenges/components/currentEventCard.dart';
import 'package:devfest_challenges/components/upcomingEventCard.dart';
import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 80),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.png'),
          alignment: Alignment.topCenter,
          fit: BoxFit.contain,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // upper side
          Flexible(
            flex: 2,
            child: Upper(),
          ),
          // event info
          Flexible(
            flex: 6,
            child: Center(
              child: CurrentEventCard(
                title: 'Devfest 2022',
                desc: 'Devfest is an anually event hel by gdg community',
                participants: 80,
              ),
            ),
          ),
          // Upcoming Event
          Flexible(
            flex: 3,
            child: Footer(),
          )
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              right: -30,
              bottom: -20,
              child: Image.asset(
                'assets/Arrow.png',
              ),
            ),
            RichText(
              text: const TextSpan(
                text: 'UPCOMING ',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(text: 'E', style: TextStyle(color: Colors.blue)),
                  TextSpan(text: 'VENTS'),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        // Events
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              UpcomingEventCard(),
              UpcomingEventCard(),
              UpcomingEventCard(),
            ],
          ),
        )
      ],
    );
  }
}

class Upper extends StatelessWidget {
  const Upper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          left: -30,
          bottom: 0,
          child: Image.asset(
            'assets/Lampe.png',
            width: 60,
          ),
        ),
        Positioned(
          right: -70,
          top: 0,
          child: Image.asset('assets/Maqam_el_chahid.png'),
        ),
        RichText(
          text: const TextSpan(
            text: 'CURRENT ',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            children: <TextSpan>[
              TextSpan(text: 'E', style: TextStyle(color: Colors.blue)),
              TextSpan(text: 'VENTS'),
            ],
          ),
        ),
      ],
    );
  }
}
