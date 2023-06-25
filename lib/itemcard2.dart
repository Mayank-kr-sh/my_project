import 'package:flutter/material.dart';

class DynamicCard2 extends StatefulWidget {
  final IconData icon;
  final String name;

  const DynamicCard2({Key? key, required this.icon, required this.name})
      : super(key: key);

  @override
  _DynamicCard2State createState() => _DynamicCard2State();
}

class _DynamicCard2State extends State<DynamicCard2> {
  Color cardColor = Colors.white;

  void changeColor() {
    setState(() {
      cardColor = Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: changeColor,
      child: Container(
        width: 90.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: cardColor.withOpacity(0.6),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: 35.0,
              color: Colors.black,
            ),
            const SizedBox(height: 10.0),
            Text(
              widget.name,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
