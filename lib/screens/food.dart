import 'package:flutter/material.dart';

class FoodUI extends StatelessWidget {
  static final routeName = '/food';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double appBarSize = AppBar().preferredSize.height;
    //AppBar().preferredSize.height;
    return Container(
      child: Stack(
        children: [
          Container(
            height: size.height * .36,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "lib/assets/images/wings.jpg",
                ),
              ),
            ),
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
                            Text(
                              'Chicken Wings',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                'Edgar A. Chan',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontFamily: 'Amaranth',
                                ),
                              ),
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
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(
                              height: size.height * .005,
                            ),
                            Text(
                              'sample text here, sample text here, sample text here, sample text here, sample text here, sample text here, sample text here, sample text here, sample text here, sample text here,sample text here, sample text here, sample text here, sample text here, sample text here, sample text here, sample text here, sample text here,',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontSize: 16,
                                  ),
                            ),
                            SizedBox(
                              height: size.height * .022,
                            ),
                            Text(
                              'Method',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(
                              height: size.height * .008,
                            ),
                            Text(
                              'Step 1',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              'sample text here, sample text here, sample text here, sample text here, sample text here, sample text here, sample text here, sample text here, sample text here, sample text here,sample text here, sample text here, sample text here, sample text here, sample text here, sample text here, sample text here, sample text here,',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontSize: 16,
                                  ),
                            ),
                            SizedBox(
                              height: size.height * .01,
                            ),
                            Text(
                              'Step 2',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              'sample text here, sample text here, sample text here, sample text here, sample text here, sample text here, sample text here, sample text here, sample text here, sample text here,sample text here, sample text here, sample text here, sample text here, sample text here, sample text here, sample text here, sample text here,',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontSize: 16,
                                  ),
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
