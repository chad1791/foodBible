import 'package:flutter/material.dart';

import '../widgets/user_profile_info.dart';

class Profile extends StatelessWidget {
  static final String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double appBarSize = AppBar().preferredSize.height;
    double height = size.height - appBarSize;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert), //hire a chef.. add new recipe
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        color: Color(0xfff2f2f2),
        width: double.infinity,
        height: height,
        child: Column(
          children: [
            UserProfileInfo(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    right: 25,
                    left: 25,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Recent Activity',
                        style: Theme.of(context).textTheme.headline1.copyWith(
                              fontSize: 20,
                              //fontWeight: FontWeight.normal,
                            ),
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      Text(
                        'No activity has been recorded for this account',
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 14,
                              color: Colors.black38,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
