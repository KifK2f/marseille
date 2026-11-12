import 'package:flutter/material.dart';
import 'package:marseille/model/place.dart';


class DetailPage extends StatelessWidget {
  final Place place;

  const DetailPage({super.key, required this.place});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
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
      ),
    );
  }

}