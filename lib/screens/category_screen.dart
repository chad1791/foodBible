import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryScreen extends StatelessWidget {
  static final routeName = '/screen_category';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final String id = ModalRoute.of(context).settings.arguments as String;
    //print(id);
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('categories')
              .doc(id)
              .snapshots(),
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            final document = snapshot.data;
            return Text(
              document['name'],
              style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Color(0xfff2f2f2),
                  ),
            );
          },
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
                  'Category selected!',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        color: Theme.of(context).primaryColor.withOpacity(.7),
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
