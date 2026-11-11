import 'package:flutter/material.dart';
import 'package:marseille/widgets/place_tile.dart';

import '../../datas/data_source.dart';
import '../../model/place.dart';

class Separated extends StatefulWidget {
  const Separated({super.key});

  @override
  State<StatefulWidget> createState() {
    return SeparatedState();
  }
}


class SeparatedState extends State<Separated>{
  final List<Place> places = DataSource().allPlaces();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: ((BuildContext context, int index) =>
        Dismissible(
          key: UniqueKey(),
          // key: ValueKey<int>(index),
            onDismissed: (direction){
          setState(() {
            places.removeAt(index);
          });
            },

            child: PlaceTile(place: places[index], index: index,),
          // child: const Text("Ali"),
        )
        ),
        separatorBuilder: (( context,  index) =>  Divider( //Modifier légèrement le Divider
          indent: 18,
          endIndent: 18,
          color: Colors.lightBlue,
        )),
        itemCount: places.length);
  }
  }