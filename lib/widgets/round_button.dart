import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final Function function;
  final Color color, txtColor;

  const RoundButton({
    Key key,
    this.text,
    this.function,
    this.color = const Color(0xfff96d00),
    this.txtColor = const Color(0xfff2f2f2),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .85,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 18,
          ),
          color: color,
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline2,
          ),
          onPressed: function,
        ),
      ),
    );
  }
}
