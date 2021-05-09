import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final Function onPress;
  const AlreadyHaveAnAccount({
    Key key,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account? ',
          style: Theme.of(context).textTheme.headline3,
        ),
        GestureDetector(
          onTap: onPress,
          child: Text(
            'Sign Up',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ],
    );
  }
}
