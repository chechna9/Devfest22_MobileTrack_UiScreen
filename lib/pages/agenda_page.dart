import 'package:devfest_challenges/components/action_card.dart';
import 'package:devfest_challenges/models/action_model.dart';
import 'package:devfest_challenges/models/agenda_model.dart';
import 'package:devfest_challenges/models/day_model.dart';
import 'package:devfest_challenges/pages/feedbacks.dart';
import 'package:flutter/material.dart';

class AgendaPage extends StatefulWidget {
  final AgendaModele agenda;
  const AgendaPage({super.key, required this.agenda});

  @override
  State<AgendaPage> createState() => _AgendaPageState();
}

class _AgendaPageState extends State<AgendaPage> {
  late int currentDay;
  void setCurrentDay(day) {
    setState(() {
      currentDay = day;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      currentDay = 1;
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
            child: Column(
              // Upper
              children: [
                const Upper(),
                // generate days from agenda
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.agenda.days.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              setCurrentDay(index + 1);
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: (index + 1) == currentDay
                                  ? Colors.amber
                                  : Colors.grey[300],
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                            child: Text(
                              'DAY ${index + 1}',
                              style: TextStyle(
                                  color: (index + 1) == currentDay
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: ListView(
                    children: widget.agenda.days[currentDay - 1].actions
                        .map(
                          (e) => ActionCard(action: e),
                        )
                        .toList(),
                  ),
                ),
                const SizedBox(height: 10),
                // the 3 buttons
                Flexible(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 15),
                          backgroundColor: Colors.red[300],
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        child: const Text(
                          'Q&A',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Feedbacks(),
                          ));
                        },
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          backgroundColor: Colors.amber[200],
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        child: const Text(
                          'FEEDBACK',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          backgroundColor: Colors.blue[200],
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        child: const Text(
                          'SUBSCRIBE',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
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
