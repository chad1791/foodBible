import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  static final String routeName = "/search";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: Theme.of(context).textTheme.headline5.copyWith(
                color: Color(0xfff2f2f2),
              ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
      ),
    );
  }
}
