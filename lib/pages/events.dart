import 'package:devfest_challenges/components/currentEventCard.dart';
import 'package:devfest_challenges/components/upcomingEventCard.dart';
import 'package:devfest_challenges/models/action_model.dart';
import 'package:devfest_challenges/models/agenda_model.dart';
import 'package:devfest_challenges/models/day_model.dart';
import 'package:devfest_challenges/models/event_model.dart';
import 'package:flutter/material.dart';

List<EventModele> eventList = [
  EventModele(
    title: 'Devfest 2022',
    description: 'Devfest is an anually event held by GDG community',
    participants: 180,
    agenda: AgendaModele(days: [
      DayModele(actions: [
        ActionModele(
          time: '08:30 AM',
          date: '1 nov',
          name: 'Devfest day 1 action 1',
          main: Colors.blue[200],
          sec: Colors.blue,
        ),
        ActionModele(
          time: '10:30 AM',
          date: '1 nov',
          name: 'Devfest day 1 action 2',
          main: Colors.amber[200],
          sec: Colors.amber,
        ),
        ActionModele(
          time: '11:30 AM',
          date: '1 nov',
          name: 'Devfest day 1 action 3',
          main: Colors.blue[200],
          sec: Colors.blue,
        ),
        ActionModele(
          time: '12:30 AM',
          date: '1 nov',
          name: 'Devfest day 1 action 4',
          main: Colors.red[200],
          sec: Colors.red,
        ),
        ActionModele(
          time: '14:30 AM',
          date: '1 nov',
          name: 'Devfest day 1 action 5',
          main: Colors.blue[200],
          sec: Colors.blue,
        ),
      ]),
      DayModele(actions: [
        ActionModele(
          time: '08:30 AM',
          date: '1 nov',
          name: 'Devfest day 2 action 1',
          main: Colors.blue[200],
          sec: Colors.blue,
        ),
        ActionModele(
          time: '10:30 AM',
          date: '2 nov',
          name: 'Devfest day 2 action 2',
          main: Colors.amber[200],
          sec: Colors.amber,
        ),
        ActionModele(
          time: '11:30 AM',
          date: '2 nov',
          name: 'Devfest day 2 action 3',
          main: Colors.red[200],
          sec: Colors.red,
        ),
        ActionModele(
          time: '12:30 AM',
          date: '2 nov',
          name: 'Devfest day 2 action 4',
          main: Colors.blue[200],
          sec: Colors.blue,
        ),
      ]),
      DayModele(actions: [
        ActionModele(
          time: '08:30 AM',
          date: '1 nov',
          name: 'Devfest day 3 action 1',
          main: Colors.blue[200],
          sec: Colors.blue,
        ),
        ActionModele(
          time: '10:30 AM',
          date: '2 nov',
          name: 'Devfest day 3 action 2',
          main: Colors.amber[200],
          sec: Colors.amber,
        ),
      ])
    ]),
  ),
  EventModele(
      title: 'IWD 2022',
      description: 'IWD is an anually event held by WTL community',
      participants: 80,
      agenda: AgendaModele(days: [
        DayModele(actions: [
          ActionModele(
            time: '08:30 AM',
            date: '1 nov',
            name: 'IWD day 1 action 1',
            main: Colors.blue[200],
            sec: Colors.blue,
          ),
          ActionModele(
            time: '10:30 AM',
            date: '1 nov',
            name: 'IWD day 1 action 2',
            main: Colors.amber[200],
            sec: Colors.amber,
          ),
          ActionModele(
            time: '11:30 AM',
            date: '1 nov',
            name: 'IWD day 1 action 3',
            main: Colors.blue[200],
            sec: Colors.blue,
          ),
          ActionModele(
            time: '12:30 AM',
            date: '1 nov',
            name: 'IWD day 1 action 4',
            main: Colors.red[200],
            sec: Colors.red,
          ),
          ActionModele(
            time: '14:30 AM',
            date: '1 nov',
            name: 'IWD day 1 action 5',
            main: Colors.blue[200],
            sec: Colors.blue,
          ),
        ]),
        DayModele(actions: [
          ActionModele(
            time: '08:30 AM',
            date: '2 nov',
            name: 'IWD day 2 action 1',
            main: Colors.blue[200],
            sec: Colors.blue,
          ),
          ActionModele(
            time: '10:30 AM',
            date: '2 nov',
            name: 'IWD day 2 action 2',
            main: Colors.amber[200],
            sec: Colors.amber,
          ),
          ActionModele(
            time: '11:30 AM',
            date: '2 nov',
            name: 'IWD day 2 action 3',
            main: Colors.red[200],
            sec: Colors.red,
          ),
          ActionModele(
            time: '12:30 AM',
            date: '2 nov',
            name: 'IWD day 2 action 4',
            main: Colors.blue[200],
            sec: Colors.blue,
          ),
        ])
      ])),
  EventModele(
    title: 'HashCode 2022',
    description: 'HashCode is an anually event held by GDG community',
    participants: 70,
    agenda: AgendaModele(
      days: [
        DayModele(
          actions: [
            ActionModele(
              time: '08:30 AM',
              date: '1 nov',
              name: 'HashCode day 1 action 1',
              main: Colors.blue[200],
              sec: Colors.blue,
            ),
            ActionModele(
              time: '10:30 AM',
              date: '1 nov',
              name: 'HashCode day 1 action 2',
              main: Colors.amber[200],
              sec: Colors.amber,
            ),
            ActionModele(
              time: '11:30 AM',
              date: '1 nov',
              name: 'HashCode day 1 action 3',
              main: Colors.blue[200],
              sec: Colors.blue,
            ),
            ActionModele(
              time: '12:30 AM',
              date: '1 nov',
              name: 'HashCode day 1 action 4',
              main: Colors.red[200],
              sec: Colors.red,
            ),
            ActionModele(
              time: '14:30 AM',
              date: '1 nov',
              name: 'HashCode day 1 action 5',
              main: Colors.blue[200],
              sec: Colors.blue,
            ),
          ],
        ),
      ],
    ),
  ),
];

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  late EventModele currentEvent;
  // function to be passed to upcoming events to update the state
  void updateCurrentevent(EventModele e) {
    setState(() {
      currentEvent = e;
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      currentEvent = eventList[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
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
            const Flexible(
              flex: 2,
              child: Upper(),
            ),
            // event info
            Flexible(
              flex: 6,
              child: Center(
                  child: CurrentEventCard.fromEvent(event: currentEvent)),
            ),
            // Upcoming Event
            Flexible(
              flex: 3,
              child: Footer(update: updateCurrentevent),
            )
          ],
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  final Function update;
  const Footer({
    Key? key,
    required this.update,
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
              right: -25,
              bottom: -10,
              child: Image.asset(
                'assets/Arrow.png',
                width: 18,
              ),
            ),
            Positioned(
              right: -100,
              top: -20,
              child: Image.asset(
                'assets/Star.png',
                width: 18,
              ),
            ),
            RichText(
              text: const TextSpan(
                text: 'UPCOMING ',
                style: TextStyle(
                  fontSize: 25,
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
            children: eventList
                .map(
                  (e) => GestureDetector(
                    onTap: () => update(e),
                    child: UpcomingEventCard(event: e),
                  ),
                )
                .toList(),
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
          left: -20,
          bottom: 5,
          child: Image.asset(
            'assets/Lampe.png',
            width: 50,
          ),
        ),
        Positioned(
          right: -170,
          top: -10,
          child: Image.asset('assets/Maqam_el_chahid.png'),
        ),
        RichText(
          text: const TextSpan(
            text: 'CURRENT ',
            style: TextStyle(
              fontSize: 25,
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
