import 'package:flutter/material.dart';

class FoodReaction extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function fnx;
  const FoodReaction({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.fnx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: fnx,
          icon: Icon(
            icon,
            size: 28,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontFamily: "Amaranth",
          ),
        ),
      ],
    );
  }
}
