import 'package:flutter/material.dart';

import '../widgets/trending_card_icon_details.dart';

import '../screens/food.dart';

class TrendingCard extends StatelessWidget {
  final num index;
  final num length;
  final String image;
  final String name;
  final String docId;
  const TrendingCard({
    Key key,
    this.index,
    this.length,
    this.image,
    this.name,
    this.docId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        right: index == length - 1 ? 0 : 10.0,
        top: 10,
        bottom: 10,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(FoodUI.routeName, arguments: docId);
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                image,
              ),
            ),
          ),
          width: size.width * .9,
          child: Stack(
            children: [
              Positioned(
                top: (size.height * .35) * .60,
                height: (size.height * .35) * .24,
                child: Container(
                  color: Theme.of(context).primaryColor.withOpacity(.5),
                  width: size.width * .9,
                ),
              ),
              Positioned(
                top: (size.height * .35) * .61,
                left: size.width * .05,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Amaranth',
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 38.0,
                            ),
                            child: Text(
                              'by John A. Doe',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Amaranth',
                                fontSize: 16,
                              ),
                            ),
                          ),
                          TrendingCardIconDetails(
                            icon: Icons.person,
                            text: '8',
                          ),
                          TrendingCardIconDetails(
                            icon: Icons.history,
                            text: '45 mins',
                          ),
                          TrendingCardIconDetails(
                            icon: Icons.history,
                            text: '2',
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
