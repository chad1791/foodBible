import 'package:flutter/material.dart';

class ProfileReactionsCard extends StatelessWidget {
  final String display;
  final IconData icon;
  const ProfileReactionsCard({
    Key key,
    @required this.display,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white12,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 6.0,
          bottom: 6.0,
          right: 10.0,
          left: 10.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 2.0),
              child: Icon(
                icon,
                color: Color(0xfff2f2f2),
                size: 21,
              ),
            ),
            Text(
              display,
              style: TextStyle(
                color: Color(0xfff2f2f2),
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
