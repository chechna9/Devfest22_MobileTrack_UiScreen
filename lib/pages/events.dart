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
        children: [
          // upper side
          const Expanded(
            child: Upper(),
          ),
          // event info
          Expanded(
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/background5.png'),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.contain,
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
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
                            const Text(
                              "+80",
                              style: TextStyle(
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
                      // Description
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Devfest 2022",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Devfest is an anually event hel by gdg community",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
