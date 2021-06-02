import 'package:flutter/material.dart';

//import '../models/category.dart';

class CategoryButton extends StatelessWidget {
  final int index;
  final int length;
  final String name;
  const CategoryButton({
    Key key,
    @required this.index,
    //@required this.categories,
    @required this.length,
    @required this.name,
  }) : super(key: key);

  //final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: index == length - 1 ? 0 : 12.0,
              top: 10,
            ),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 20,
                      color: Color(0xffb0cce1).withOpacity(.32),
                    ),
                  ],
                ),
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Amaranth',
                    color: Color(0xfff2f2f2),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
