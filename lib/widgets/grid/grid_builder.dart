import 'package:flutter/material.dart';
import 'package:marseille/datas/data_source.dart';
import 'package:marseille/model/place.dart';
import 'package:marseille/widgets/page_card.dart';

class GridBuilder extends StatelessWidget {
  const GridBuilder({super.key});

  @override
  Widget build(BuildContext context) {
  final List<Place> places = DataSource().allPlaces();

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.5
      ),
      itemCount: places.length, // limite le builder au nombre réel d'éléments
      itemBuilder: (context, index){
        return PlaceCard(place: places[index]);
      },
    );
  }

}