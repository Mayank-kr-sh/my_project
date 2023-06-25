import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam aliquet dui ut volutpat viverraerat. Nullam rutrum orci vel turpis aliquet, id iaculis risus dignissim. Sed vitae leo lacus.",
          maxLines: isExpanded
              ? null
              : 3, // Maximum number of lines to show when not expanded
          overflow: TextOverflow.fade,
          style: TextStyle(fontSize: 16.0),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Text(
            isExpanded ? 'Hide' : 'Read More',
            style: const TextStyle(
              color: Colors.orangeAccent,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}
