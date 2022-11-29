import 'package:devfest_challenges/models/agenda_model.dart';

class EventModele {
  final String title;
  final String description;
  final int participants;
  final AgendaModele agenda;
  EventModele(
      {required this.title,
      required this.description,
      required this.participants,
      required this.agenda});
}
