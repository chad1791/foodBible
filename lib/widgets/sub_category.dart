import 'package:flutter/material.dart';

class SubCategory extends StatelessWidget {
  final String displayTxt, trailingTxt;
  final double size;
  final TextStyle theme;
  const SubCategory({
    Key key,
    this.displayTxt,
    this.size,
    this.trailingTxt,
    this.theme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          displayTxt,
          textAlign: TextAlign.left,
          style: theme,
        ),
        Text(
          trailingTxt,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    );
  }
}
