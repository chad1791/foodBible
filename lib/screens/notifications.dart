import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  static final routeName = '/notifications';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
        body: Container(
          width: double.infinity,
          height: size.height,
          //color: Colors.green,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                right: 25,
                left: 25,
              ),
              child: Column(
                children: [
                  Text(
                    'You have 0 notifications!',
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          color: Theme.of(context).primaryColor.withOpacity(.7),
                        ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
