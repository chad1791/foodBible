import 'package:flutter/material.dart';

import '../screens/food.dart';

class SmallFoodCard extends StatelessWidget {
  final image;
  final name;
  final author;
  final index;
  final length;
  const SmallFoodCard({
    Key key,
    @required this.image,
    @required this.name,
    @required this.author,
    @required this.index,
    @required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        right: index == length - 1 ? 0.0 : 10.0,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(FoodUI.routeName);
        },
        child: Container(
          width: size.width * .38,
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: (size.height * .28) * .68,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      image,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  left: 2,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Amaranth',
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'by ',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontFamily: 'Amaranth',
                          ),
                        ),
                        Text(
                          author,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontFamily: 'Amaranth',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
