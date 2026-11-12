import 'package:flutter/material.dart';

import '../../model/place.dart';

class DetailPagePortrait extends StatelessWidget {
  final Place place;

  const DetailPagePortrait({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 300,
          child: Image.asset(place.getFolderPath(), fit: BoxFit.cover,),
        ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(place.desc, style: TextStyle(fontSize: 18,),),
          )
        ],
      ),
    );
  }
}