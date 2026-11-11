import 'package:flutter/material.dart';

import '../model/place.dart';


class PlaceTile extends StatelessWidget {
  final Place place;
  final

  const PlaceTile({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(place.name),
      leading: CircleAvatar(radius: 15, backgroundColor: Colors.lightBlue, child: Text(place.index),),
      onTap: (){
        // MaterialPageRoute route = MaterialPageRoute(builder: (ctx) => DetailPage(user: user));
        MaterialPageRoute route = MaterialPageRoute(builder: (ctx) => Center());
        Navigator.of(context).push(route);
      },
    );
  }

}