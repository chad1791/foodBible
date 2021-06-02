import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

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

//import 'providers/categories.dart';
//import 'providers/foods.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _initializeFb = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeFb,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return CircularProgressIndicator();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          FlutterError.onError =
              FirebaseCrashlytics.instance.recordFlutterError;
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Cook it - Recipes Bible',
            theme: appTheme(),
            home: Login(),
            routes: {
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
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return CircularProgressIndicator();
      },
    );
    /*return MultiProvider(
      providers: [
        ChangeNotifierProxyProvider0<Categories>(
          update: (_, prevCats) => Categories(
            prevCats == null ? [] : prevCats.categories,
          ),
        ),
        ChangeNotifierProvider(
          create: (_) => Foods(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cook it - Recipes Bible',
        theme: appTheme(),
        home: Login(),
        routes: {
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
    );*/
  }
}
