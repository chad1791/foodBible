import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import '../screens/drawer.dart';

import '../widgets/sub_category.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/round_email_field.dart';
import '../widgets/cat_button.dart';
import '../widgets/trending_card.dart';
import '../widgets/small_food_card.dart';

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
    final recent = Provider.of<Foods>(context).recent;
    final breakfast = Provider.of<Foods>(context).breakfast;
    final lunch = Provider.of<Foods>(context).lunch;
    final dinner = Provider.of<Foods>(context).dinner;
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
                SizedBox(
                  height: size.height * .01,
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
                  height: size.height * .015,
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
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => SmallFoodCard(
                        image: recent[index].image,
                        name: recent[index].name,
                        author: recent[index].creatorId,
                        length: recent.length,
                        index: index,
                      ),
                      itemCount: recent.length,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .015,
                ),
                SubCategory(
                  displayTxt: 'Breakfast',
                  theme: Theme.of(context).textTheme.headline5,
                  trailingTxt: 'Popular breakfast recipes',
                ),
                SizedBox(
                  height: size.height * .28,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 12.0,
                      bottom: 8.0,
                      right: 12,
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => SmallFoodCard(
                        image: breakfast[index].image,
                        name: breakfast[index].name,
                        author: breakfast[index].creatorId,
                        length: breakfast.length,
                        index: index,
                      ),
                      itemCount: breakfast.length,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .015,
                ),
                SubCategory(
                  displayTxt: 'Lunch',
                  theme: Theme.of(context).textTheme.headline5,
                  trailingTxt: 'Popular lunch recipes',
                ),
                SizedBox(
                  height: size.height * .28,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 12.0,
                      bottom: 8.0,
                      right: 12,
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => SmallFoodCard(
                        image: lunch[index].image,
                        name: lunch[index].name,
                        author: lunch[index].creatorId,
                        length: lunch.length,
                        index: index,
                      ),
                      itemCount: lunch.length,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .015,
                ),
                SubCategory(
                  displayTxt: 'Dinner',
                  theme: Theme.of(context).textTheme.headline5,
                  trailingTxt: 'Popular dinner recipes',
                ),
                SizedBox(
                  height: size.height * .28,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 12.0,
                      bottom: 8.0,
                      right: 12,
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => SmallFoodCard(
                        image: dinner[index].image,
                        name: dinner[index].name,
                        author: dinner[index].creatorId,
                        length: dinner.length,
                        index: index,
                      ),
                      itemCount: dinner.length,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .01,
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
