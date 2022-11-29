import 'package:devfest_challenges/components/rate_elmnt.dart';
import 'package:flutter/material.dart';

class Feedbacks extends StatefulWidget {
  const Feedbacks({super.key});

  @override
  State<Feedbacks> createState() => _FeedbacksState();
}

class _FeedbacksState extends State<Feedbacks> {
  late int rate;
  void setRate(newRate) {
    setState(() {
      rate = newRate;
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      rate = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
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
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                alignment: Alignment.topCenter,
                fit: BoxFit.contain,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Upper(),
                const SizedBox(
                  height: 70,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Form(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Transform.translate(
                              offset: const Offset(30, 0),
                              child: const Text(
                                'Name / E-mail',
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 0,
                                  horizontal: 10,
                                ),
                                filled: true,
                                fillColor: Colors.grey,
                                focusedBorder:
                                    myOutlinedBorder(color: Colors.black),
                                enabledBorder:
                                    myOutlinedBorder(color: Colors.transparent),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Transform.translate(
                              offset: const Offset(30, 0),
                              child: const Text(
                                'Rate your experience in the event',
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RateElement(
                                  color: Colors.red,
                                  selfRate: 1,
                                  update: setRate,
                                  rate: rate,
                                ),
                                RateElement(
                                  color: Colors.purple,
                                  selfRate: 2,
                                  update: setRate,
                                  rate: rate,
                                ),
                                RateElement(
                                  color: Colors.yellow,
                                  selfRate: 3,
                                  update: setRate,
                                  rate: rate,
                                ),
                                RateElement(
                                  color: Colors.lightGreen,
                                  selfRate: 4,
                                  update: setRate,
                                  rate: rate,
                                ),
                                RateElement(
                                  color: Colors.green,
                                  selfRate: 5,
                                  update: setRate,
                                  rate: rate,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            // rate
                            const SizedBox(
                              height: 20,
                            ),
                            Transform.translate(
                              offset: const Offset(30, 0),
                              child: const Text(
                                'MORE DETAILS',
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              maxLines: 5,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey,
                                focusedBorder:
                                    myOutlinedBorder(color: Colors.black),
                                enabledBorder:
                                    myOutlinedBorder(color: Colors.transparent),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
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
          left: -60,
          bottom: -20,
          child: Image.asset(
            'assets/Lampe.png',
            width: 80,
          ),
        ),
        Positioned(
          right: -70,
          top: -10,
          child: Column(
            children: [
              Image.asset('assets/Maqam_el_chahid.png'),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "ANONYMOUS",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        ),
        RichText(
          text: const TextSpan(
            text: 'FEEDBACK ',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            children: <TextSpan>[
              TextSpan(text: 'F', style: TextStyle(color: Colors.blue)),
              TextSpan(text: 'ORM'),
            ],
          ),
        ),
      ],
    );
  }
}

OutlineInputBorder myOutlinedBorder({Color? color}) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
        color: color ?? Colors.black,
        width: 2,
      ),
    );
