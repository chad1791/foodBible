import 'package:flutter/material.dart';

class FoodDetailsRow extends StatelessWidget {
  final String field;
  final String value;
  const FoodDetailsRow({
    Key key,
    this.field,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          field,
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontSize: 18,
                // fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
