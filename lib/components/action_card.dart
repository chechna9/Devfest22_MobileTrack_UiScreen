import 'package:devfest_challenges/models/action_model.dart';
import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  final ActionModele action;
  final Color? mainColor;
  final Color? secColor;
  const ActionCard(
      {super.key,
      required this.action,
      required this.mainColor,
      required this.secColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // time and date
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                action.time,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                action.date,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        // name
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: secColor ?? Colors.blue,
                    offset: const Offset(-4, 0),
                  ),
                ]),
            child: Text(
              action.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
