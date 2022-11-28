import 'package:devfest_challenges/components/currentEventCard.dart';
import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
        children: const [
          // upper side
          Flexible(
            child: Upper(),
          ),
          // event info
          Flexible(
            child: Center(
              child: CurrentEventCard(
                title: 'Devfest 2022',
                desc: 'Devfest is an anually event hel by gdg community',
                participants: 80,
              ),
            ),
          ),
        ],
      ),
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
