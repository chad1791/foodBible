import 'package:flutter/material.dart';

import '../widgets/profile_reactions_card.dart';
import '../widgets/profile_circular_image.dart';

class UserProfileInfo extends StatelessWidget {
  const UserProfileInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double appBarSize = AppBar().preferredSize.height;
    double height = size.height - appBarSize;
    return Container(
      height: height * .38,
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          ProfileCircularImage(
            image: 'lib/assets/images/pizza.jpg',
          ),
          SizedBox(
            height: height * .018,
          ),
          Text(
            'John Albert Smith',
            style: Theme.of(context).textTheme.headline1.copyWith(
                  color: Color(0xfff2f2f2),
                  fontSize: 23,
                ),
          ),
          SizedBox(
            height: height * .008,
          ),
          Text(
            'I\'m a chef, what\'s your super power?',
            style: Theme.of(context).textTheme.headline4.copyWith(
                  color: Color(0xfff2f2f2),
                  fontWeight: FontWeight.normal,
                  fontSize: 13.5,
                ),
          ),
          SizedBox(
            height: height * .042,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 30.0,
              left: 30.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfileReactionsCard(
                  display: '1250',
                  icon: Icons.people,
                ),
                ProfileReactionsCard(
                  display: '20',
                  icon: Icons.food_bank,
                ),
                ProfileReactionsCard(
                  display: '100',
                  icon: Icons.favorite,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
