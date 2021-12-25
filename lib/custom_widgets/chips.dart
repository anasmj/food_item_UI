import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FoodChips extends StatefulWidget {
  List<String> icons;
  FoodChips({Key? key, required this.icons}) : super(key: key);

  @override
  State<StatefulWidget> createState() => FoodChipsState();
}

class FoodChipsState extends State<FoodChips> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 60,
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: widget.icons
              .asMap()
              .entries
              .map((MapEntry map) => _buildIcon(map.key))
              .toList(),
        ),
      );

  Widget _buildIcon(int index) => GestureDetector(
        onTap: () {
          setState(() => _selected = index);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Chip(
            label: SizedBox(
                height: 35,
                width: 80,

                ///color: Colors.blue,
                child: Center(
                  child: Text(
                    widget.icons[index],
                    style: const TextStyle(fontSize: 24),
                  ),
                )),
            backgroundColor:
                _selected == index ? Colors.amber[300] : Colors.white,
          ),
        ),
      );
}
