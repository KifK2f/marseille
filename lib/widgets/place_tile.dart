import 'package:flutter/material.dart';
import 'package:marseille/pages/detail_page.dart';

import '../model/place.dart';


class PlaceTile extends StatelessWidget {
  final Place place;
  final int index;

  const PlaceTile({super.key, required this.place, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(place.name, style: TextStyle(fontSize: 18, color: Colors.lightBlue, fontWeight: FontWeight.bold),),
      leading: CircleAvatar(radius: 24, backgroundColor: Colors.lightBlue,
        child: Text("${index + 1 }", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),),
      trailing: SizedBox(
        width: 110,
        child: Image.asset(place.getFolderPath(), fit: BoxFit.cover,),
      ),
      onTap: (){
        MaterialPageRoute route = MaterialPageRoute(builder: (ctx) => DetailPage(place: place));
        Navigator.of(context).push(route);
      },
    );
  }

}