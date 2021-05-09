import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'utils/theme.dart';

import 'screens/login.dart';
import 'screens/register.dart';
import 'screens/homescreen.dart';
import 'screens/food.dart';

import 'providers/categories.dart';
import 'providers/foods.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //ChangeNotifierProvider(
        //create: (_) => Auth(),
        //),
        ChangeNotifierProvider(
          create: (_) => Categories(),
        ),
        ChangeNotifierProvider(
          create: (_) => Foods(),
        ),
        /*ChangeNotifierProxyProvider<Auth, Categories>(
          update: (_, auth, previousCats) => Categories(
            auth.token,
            auth.userId,
            previousCats == null ? [] : previousCats,
          ),
        ),
        ChangeNotifierProxyProvider<Auth, ReceivedPackages>(
          update: (_, auth, prevPackages) => ReceivedPackages(
            auth.token,
            auth.userId,
            prevPackages == null ? [] : prevPackages.packages,
          ),
        ),
        ChangeNotifierProxyProvider<Auth, Notifications>(
          update: (_, auth, prevNotifications) => Notifications(
            auth.token,
            auth.userId,
            prevNotifications == null ? [] : prevNotifications.notifications,
          ),
        ),*/
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cook it - Recipes Bible',
        theme: appTheme(),
        home: Login(),
        //home: Food(),

        routes: {
          //'/': (_) => HomeScreen(),
          HomeScreen.routeName: (_) => HomeScreen(),
          Register.routeName: (_) => Register(),
          FoodUI.routeName: (_) => FoodUI(),
        },
      ),
    );
  }
}
