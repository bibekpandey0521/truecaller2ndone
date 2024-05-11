import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(10, (index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(),
      )),
    );
  }
}