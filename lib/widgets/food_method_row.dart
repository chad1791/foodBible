import 'package:flutter/material.dart';

class FoodMethodRow extends StatelessWidget {
  final String step;
  final String description;
  const FoodMethodRow({
    Key key,
    this.step,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          step,
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          description,
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontSize: 18,
              ),
        ),
        SizedBox(
          height: size.height * .01,
        ),
      ],
    );
  }
}
