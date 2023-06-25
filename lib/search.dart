import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const CircleBorder(),
      child: IconButton(
        icon: const Icon(Icons.search),
        color: Colors.black,
        iconSize: 38.0,
        onPressed: () {},
      ),
    );
  }
}
