import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../widgets/food_reaction.dart';
import '../widgets/food_details_row.dart';
import '../widgets/food_method_row.dart';

class FoodUI extends StatelessWidget {
  static final routeName = '/food';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double appBarSize = AppBar().preferredSize.height;
    String docId = ModalRoute.of(context).settings.arguments as String;
    print(docId);
    return Container(
      child: Stack(
        children: [
          StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('foods')
                .doc(docId)
                .snapshots(),
            builder: (ctx, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              final document = snapshot.data;
              return Container(
                height: size.height * .36,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      document['image'],
                    ),
                  ),
                ),
              );
            },
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Theme.of(context).primaryColor.withOpacity(.38),
              elevation: 0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    size: 25,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            body: Stack(
              children: [
                Positioned(
                  top: (size.height * .30) - appBarSize,
                  child: Container(
                    height: size.height * .65,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Color(0xfff2f2f2),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 15.0,
                        right: 20,
                        left: 20,
                        bottom: 10,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 8),
                                  child: StreamBuilder(
                                    stream: FirebaseFirestore.instance
                                        .collection('foods')
                                        .doc(docId)
                                        .snapshots(),
                                    builder: (ctx, snapshot) {
                                      if (snapshot.connectionState ==
                                          ConnectionState.waiting) {
                                        return Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      }
                                      final document = snapshot.data;
                                      return Text(
                                        document['name'],
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                              fontSize: 31,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      );
                                    },
                                  ),
                                ),
                                Icon(Icons.star_border_outlined),
                                Icon(Icons.star_border_outlined),
                                Icon(Icons.star_border_outlined),
                                Icon(Icons.star_border_outlined),
                                Icon(Icons.star_border_outlined),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Color(0xfff2f2f2),
                                        child: CircleAvatar(
                                          radius: 19,
                                          backgroundImage: AssetImage(
                                            'lib/assets/images/pizza.jpg',
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Text(
                                        'Edgar A. Chan',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54,
                                          fontFamily: 'Amaranth',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 4,
                                      horizontal: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(25),
                                      ),
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    child: Text(
                                      'Follow',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * .013,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 0,
                                horizontal: 20,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FoodReaction(
                                    text: 'Like',
                                    icon: Icons.favorite_outline,
                                    fnx: () {},
                                  ),
                                  FoodReaction(
                                    text: 'Favorite',
                                    icon: Icons.star_border_outlined,
                                    fnx: () {},
                                  ),
                                  FoodReaction(
                                    text: 'Share',
                                    icon: Icons.share,
                                    fnx: () {},
                                  ),
                                  FoodReaction(
                                    text: 'Hire',
                                    icon: Icons.app_registration_outlined,
                                    fnx: () {},
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: size.height * .03,
                            ),
                            Text(
                              'Details',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(
                              height: size.height * .008,
                            ),
                            StreamBuilder(
                              stream: FirebaseFirestore.instance
                                  .collection('foods')
                                  .doc(docId)
                                  .snapshots(),
                              builder: (ctx, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                                final document = snapshot.data;
                                return Column(
                                  children: [
                                    FoodDetailsRow(
                                      field: 'Time:  ',
                                      value: document['details']['time'],
                                    ),
                                    SizedBox(
                                      height: size.height * .005,
                                    ),
                                    FoodDetailsRow(
                                      field: 'Difficulty:  ',
                                      value: document['details']['difficulty'],
                                    ),
                                    SizedBox(
                                      height: size.height * .005,
                                    ),
                                    FoodDetailsRow(
                                      field: 'Servings:  ',
                                      value: document['details']['servings'],
                                    ),
                                  ],
                                );
                              },
                            ),
                            SizedBox(
                              height: size.height * .02,
                            ),
                            Text(
                              'Ingredients',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(
                              height: size.height * .005,
                            ),
                            StreamBuilder(
                              stream: FirebaseFirestore.instance
                                  .collection('foods')
                                  .doc(docId)
                                  .snapshots(),
                              builder: (ctx, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                                final document = snapshot.data['ingredients'];
                                return Column(
                                  children: [
                                    ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      shrinkWrap: true,
                                      itemBuilder: (ctx, index) =>
                                          FoodDetailsRow(
                                        field: '${index + 1})  ',
                                        value: document[index],
                                      ),
                                      itemCount: document.length,
                                    ),
                                  ],
                                );
                              },
                            ),
                            Text(
                              'Method',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(
                              height: size.height * .005,
                            ),
                            StreamBuilder(
                              stream: FirebaseFirestore.instance
                                  .collection('foods')
                                  .doc(docId)
                                  .snapshots(),
                              builder: (ctx, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                                final document = snapshot.data['method'];
                                return Column(
                                  children: [
                                    ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      shrinkWrap: true,
                                      itemBuilder: (ctx, index) =>
                                          FoodMethodRow(
                                        step: 'Step ${index + 1}',
                                        description: document[index],
                                      ),
                                      itemCount: document.length,
                                    ),
                                  ],
                                );
                              },
                            ),
                            SizedBox(
                              height: size.height * .01,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {
                // Add your onPressed code here!
              },
              label: const Text('Watch Videos'),
              icon: const Icon(Icons.video_camera_back_rounded),
              backgroundColor: Theme.of(context).primaryColor,
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            /*body: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff2f2f2),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(29),
                        topRight: Radius.circular(29),
                      ),
                    ),
                    padding: EdgeInsets.only(
                      right: 20,
                      left: 20,
                    ),
                  ),
                ),
              ],
            ),*/
          ),
        ],
      ),
    );
  }
}
