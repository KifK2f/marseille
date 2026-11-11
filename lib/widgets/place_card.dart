import 'package:flutter/material.dart';

import '../model/place.dart';

class PlaceCard extends StatelessWidget{
  final Place place;

  const PlaceCard({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: place.color.withValues(alpha: 0.7),
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 34,
              // backgroundColor: user.color,
              child: Text("place.initial"),
            ),
            const SizedBox(height: 16,),
            Text("place.fullName, style: Theme.of(context).textTheme.titleMedium")
          ],
        ),
      ),
    );
  }
}