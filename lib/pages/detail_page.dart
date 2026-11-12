import 'package:flutter/material.dart';
import 'package:marseille/model/place.dart';
import 'package:marseille/widgets/grid/detail_page_paysage.dart';
import 'package:marseille/widgets/list/detail_page_portrait.dart';


class DetailPage extends StatelessWidget {
  final Place place;

  const DetailPage({super.key, required this.place});
  
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
        backgroundColor: Colors.lightBlue,
      ),
        body: (orientation == Orientation.portrait)
            ? DetailPagePortrait(place: place)
            : DetailPagePaysage(place: place)


    );
  }

}