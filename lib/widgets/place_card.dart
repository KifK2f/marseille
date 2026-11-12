import 'package:flutter/material.dart';

import '../model/place.dart';

class PlaceCard extends StatelessWidget{
  final Place place;

  const PlaceCard({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(12),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(place.getFolderPath(), fit: BoxFit.cover, height: 200,),
            const SizedBox(height: 16,),
            Text(place.name, style: Theme.of(context).textTheme.titleMedium)
          ],
        ),
    );
  }
}