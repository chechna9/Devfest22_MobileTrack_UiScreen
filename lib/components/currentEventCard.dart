import 'package:flutter/material.dart';

class CurrentEventCard extends StatelessWidget {
  final String title;
  final String desc;
  final int participants;
  const CurrentEventCard({
    Key? key,
    required this.title,
    required this.desc,
    required this.participants,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 0,
        left: 30,
        right: 30,
        bottom: 12,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background5.png'),
          alignment: Alignment.topCenter,
          fit: BoxFit.contain,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        // margin: const EdgeInsets.symmetric(horizontal: 20),

        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background4.png'),
            alignment: Alignment.topCenter,
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            // glob image
            Positioned(
              top: 40,
              left: -20,
              child: Image.asset('assets/Globe.png'),
            ),
            // stats and other 2 other images
            Positioned(
              left: 0,
              bottom: 20,
              child: Column(
                children: [
                  Image.asset('assets/Developers.png'),
                  Text(
                    "+$participants",
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              bottom: 20,
              child: Image.asset('assets/Pointer.png'),
            ),
            // Title & Description
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  desc,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
