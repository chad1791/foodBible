import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'utils/theme.dart';

import 'screens/login.dart';
import 'screens/register.dart';
import 'screens/homescreen.dart';
import 'screens/food.dart';
import 'screens/profile.dart';
import 'screens/change_password.dart';
import 'screens/payment_methods.dart';
import 'screens/chefs.dart';
import 'screens/search.dart';
import 'screens/notifications.dart';
import 'screens/favorites.dart';

import 'providers/categories.dart';
import 'providers/foods.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
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
          Profile.routeName: (_) => Profile(),
          ChangePassword.routeName: (_) => ChangePassword(),
          Chefs.routeName: (_) => Chefs(),
          PaymentMethods.routeName: (_) => PaymentMethods(),
          Search.routeName: (_) => Search(),
          Notifications.routeName: (_) => Notifications(),
          Favorites.routeName: (_) => Favorites(),
        },
      ),
    );
  }
}
