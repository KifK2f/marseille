import 'package:flutter/material.dart';
import 'package:marseille/widgets/page_tile.dart';

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
            background: Container(
              color: Colors.red,
              padding: const EdgeInsets.only(right: 16),
              child: const Icon(Icons.delete, color: Colors.white,),
              alignment: Alignment.centerRight,
            ),
            child: PlaceTile(place: places[index]),
          // child: const Text("Ali"),
        )
        ),
        // separatorBuilder: ((BuildContext context, int index) => Divider()),
        separatorBuilder: (( context,  index) =>  Divider( //Modifier légèrement le Divider
          indent: 18,
          endIndent: 18,
          // color: places[index].color,
        )),
        itemCount: places.length);
  }
  }