import 'package:flutter/material.dart';

class DrawerNotificationsTitle extends StatelessWidget {
  const DrawerNotificationsTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        'NOTIFICATIONS',
        style: TextStyle(
          fontSize: 18,
          color: Color(0xfff2f2f2),
          fontFamily: 'Amaranth',
        ),
      ),
    );
  }
}
