import 'package:flutter/material.dart';

class FoodUI extends StatelessWidget {
  static final routeName = '/food';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: size.height * .28,
          ),
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
      ),
    );
  }
}
