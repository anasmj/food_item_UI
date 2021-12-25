import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';

class CountButton extends StatefulWidget {
  const CountButton({Key? key}) : super(key: key);

  @override
  _CountButtonState createState() => _CountButtonState();
}

class _CountButtonState extends State<CountButton> {
  @override
  Widget build(BuildContext context) => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: customYellow,
      ),
      //margin: const EdgeInsets.only(left: 100),
      height: 40,
      width: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(Icons.remove),
          Text(
            '0',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Icon(Icons.add),
        ],
      ));
}
