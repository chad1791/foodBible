import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import '../screens/drawer.dart';

import '../widgets/sub_category.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/round_email_field.dart';
import '../widgets/cat_button.dart';
import '../widgets/trending_card.dart';

import '../providers/categories.dart';
import '../providers/foods.dart';

class HomeScreen extends StatelessWidget {
  static final routeName = 'home';
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final categories = Provider.of<Categories>(context).categories;
    final foods = Provider.of<Foods>(context).foods;
    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),
      backgroundColor: Color(0xfff2f2f2),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.menu_rounded,
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        title: RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.headline1.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            children: [
              TextSpan(text: "Food", style: TextStyle()),
              TextSpan(
                text: "Bible",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * .02,
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width * .022),
                  child: RoundedEmailField(
                    hintText: 'Search Here',
                    icon: Icons.search,
                    containerColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: size.height * .025,
                ),
                SubCategory(
                  displayTxt: 'Categories',
                  theme: Theme.of(context).textTheme.headline1,
                  trailingTxt: 'Start by selecting a category',
                ),
                SizedBox(
                  height: size.height * .1,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) => CategoryButton(
                      categories: categories,
                      index: index,
                      length: categories.length,
                    ),
                    itemCount: categories.length,
                  ),
                ),
                SubCategory(
                  displayTxt: 'Most Popular',
                  theme: Theme.of(context).textTheme.headline5,
                  trailingTxt: 'Popular foods selected for you!',
                ),
                SizedBox(
                  height: size.height * .35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) => TrendingCard(
                      name: foods[index].name,
                      image: foods[index].image,
                      index: index,
                      length: foods.length,
                    ),
                    itemCount: foods.length,
                  ),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                SubCategory(
                  displayTxt: 'Recently Added',
                  theme: Theme.of(context).textTheme.headline5,
                  trailingTxt: 'Recipes added for the past 7 days!',
                ),
                SizedBox(
                  height: size.height * .28,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                      bottom: 8.0,
                      right: 12,
                    ),
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
                                  'lib/assets/images/wings.jpg',
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
                                  'Chicken Wings',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontFamily: 'Amaranth',
                                  ),
                                ),
                                Text(
                                  'by John Doe',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontFamily: 'Amaranth',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                SubCategory(
                  displayTxt: 'Breakfast',
                  theme: Theme.of(context).textTheme.headline5,
                  trailingTxt: 'Popular breakfast recipes',
                ),
                SizedBox(
                  height: size.height * .18,
                ),
                SubCategory(
                  displayTxt: 'Lunch',
                  theme: Theme.of(context).textTheme.headline5,
                  trailingTxt: 'Popular lunch recipes',
                ),
                SizedBox(
                  height: size.height * .18,
                ),
                SubCategory(
                  displayTxt: 'Diner',
                  theme: Theme.of(context).textTheme.headline5,
                  trailingTxt: 'Popular diner recipes',
                ),
                SizedBox(
                  height: size.height * .18,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
