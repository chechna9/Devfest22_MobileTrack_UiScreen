import 'package:flutter/material.dart';

class RateElement extends StatefulWidget {
  final int rate;
  final int selfRate;
  final Color color;
  final Function update;
  const RateElement(
      {super.key,
      required this.color,
      required this.rate,
      required this.selfRate,
      required this.update});

  @override
  State<RateElement> createState() => _RateElementState();
}

class _RateElementState extends State<RateElement> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.update(widget.selfRate);
      },
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: widget.selfRate == widget.rate
              ? widget.color
              : widget.color.withOpacity(0.5),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
