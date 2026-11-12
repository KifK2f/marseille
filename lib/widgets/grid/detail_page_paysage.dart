import 'package:flutter/material.dart';

import '../../model/place.dart';

class DetailPagePaysage extends StatelessWidget {
  final Place place;

  const DetailPagePaysage({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Row(
        // mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 280,
            height: double.infinity, // prend la hauteur réelle du body (sans AppBar)
            child: Image.asset(place.getFolderPath(), fit: BoxFit.cover,),
          ),

              //Pour occuper l'expace restant
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(place.desc, style: TextStyle(fontSize: 17,),),
                  ),
                ),
              ),
        ],
    );
  }
}