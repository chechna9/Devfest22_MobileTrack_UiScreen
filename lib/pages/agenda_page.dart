import 'package:flutter/material.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 0,
          child: Image.asset(
            'assets/background.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          bottom: 20,
          child: Image.asset(
            'assets/background2.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          bottom: -20,
          child: Image.asset(
            'assets/background3.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Image.asset(
            'assets/text.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.contain,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 80),
          child: Column(
            // Upper
            children: [
              const Upper(),
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
          left: -140,
          bottom: 0,
          child: Image.asset(
            'assets/Lampe.png',
            width: 80,
          ),
        ),
        Positioned(
          right: -140,
          top: -10,
          child: Image.asset('assets/Maqam_el_chahid.png'),
        ),
        const Text(
          'SCHEDULE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        )
      ],
    );
  }
}
