import 'package:flutter/material.dart';
import 'package:marseille/widgets/grid/grid_builder.dart';
import 'package:marseille/widgets/list/separated.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text("Marseille"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: (orientation == Orientation.portrait)
        ? const Separated()
          : const GridBuilder()
    );
  }
}