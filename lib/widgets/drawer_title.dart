import 'package:flutter/material.dart';

class DrawerTitle extends StatelessWidget {
  const DrawerTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Account Settings',
            style: TextStyle(
              fontSize: 28,
              color: Color(0xfff2f2f2),
              fontFamily: 'Amaranth',
            ),
          ),
          Text(
            'Update your settings',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xfff2f2f2).withOpacity(.7),
              fontFamily: 'Amaranth',
            ),
          ),
        ],
      ),
    );
  }
}
