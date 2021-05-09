import 'package:flutter/material.dart';

class DrawerRow extends StatelessWidget {
  final IconData icon;
  final String name;
  final String desc;
  final String route;
  const DrawerRow({
    Key key,
    this.icon,
    this.name,
    this.desc,
    this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: Icon(
                icon,
                size: 20,
                color: Color(0xfff2f2f2),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Amaranth',
                    fontSize: 20,
                    color: Color(0xfff2f2f2),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  desc,
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xfff2f2f2).withOpacity(.7),
                    fontFamily: 'Amaranth',
                  ),
                ),
              ],
            ),
          ],
        ),
        IconButton(
          icon: Icon(
            Icons.arrow_forward_ios,
            color: Color(0xfff2f2f2),
            size: 18,
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(route);
          },
        ),
      ],
    );
  }
}
