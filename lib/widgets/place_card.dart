import 'package:flutter/material.dart';

import '../model/place.dart';

class PlaceCard extends StatelessWidget{
  final Place place;
  final int index;

  const PlaceCard({super.key, required this.place, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(12),

        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(place.getFolderPath(), fit: BoxFit.cover, width: MediaQuery.of(context).size.width, height: 200,),
            const SizedBox(height: 10,),
            Text("${index + 1 } : ${place.name}", style: TextStyle(fontSize: 18, color: Colors.lightBlue, fontWeight: FontWeight.bold))
          ],
        ),
    );
  }
}