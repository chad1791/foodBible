import 'package:flutter/material.dart';

class TrendingCardIconDetails extends StatelessWidget {
  final IconData icon;
  final String text;

  const TrendingCardIconDetails({
    Key key,
    this.icon,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 8),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 2.0,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 15,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 2.0,
            ),
            child: Text(
              '|',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
