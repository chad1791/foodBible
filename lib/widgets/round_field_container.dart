import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  final containerColor;
  const TextFieldContainer({
    this.child,
    Key key,
    this.containerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .85,
      padding: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
