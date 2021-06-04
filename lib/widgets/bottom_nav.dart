import 'dart:io';

import 'package:flutter/material.dart';

import '../screens/favorites.dart';
import '../screens/profile.dart';

class BottomNav extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldkey;
  const BottomNav({
    @required this.scaffoldkey,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //final _scaffoldKey = new GlobalKey<ScaffoldState>();
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 0,
      ),
      height: size.height * .1,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xfff2f2f2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xff6daed9).withOpacity(0.11),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
              Positioned(
                top: (size.height * .09) * .45,
                left: (size.height * .09) * .12,
                child: Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.star),
                onPressed: () {
                  Navigator.of(context).pushNamed(Favorites.routeName);
                },
              ),
              Positioned(
                top: (size.height * .09) * .45,
                left: (size.height * .09) * .001,
                child: Text(
                  'Favorites',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  Navigator.of(context).pushNamed(Profile.routeName);
                },
              ),
              Positioned(
                top: (size.height * .09) * .45,
                left: (size.height * .09) * .12,
                child: Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  scaffoldkey.currentState.openDrawer();
                },
              ),
              Positioned(
                top: (size.height * .09) * .44,
                left: (size.height * .09) * .001,
                child: Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
