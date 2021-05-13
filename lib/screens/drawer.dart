import 'package:flutter/material.dart';

import 'package:custom_switch/custom_switch.dart';

import '../widgets/drawer_title.dart';
import '../widgets/drawer_row.dart';
import '../widgets/drawer_notifications_title.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Drawer(
      child: Container(
        color: Color(0xff222831),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 35,
            ),
            DrawerTitle(),
            const DrawerRow(
              icon: Icons.home,
              name: 'Home',
              desc: 'Navigate to home screen',
              route: '/',
            ),
            Divider(
              color: Theme.of(context).primaryColor,
            ),
            const DrawerRow(
              icon: Icons.person,
              name: 'Profile Information',
              desc: 'Change your account info',
              route: '/profile',
            ),
            Divider(
              color: Theme.of(context).primaryColor,
            ),
            const DrawerRow(
              icon: Icons.edit,
              name: 'Change Password',
              desc: 'Change your password',
              route: '/change-password',
            ),
            Divider(
              color: Theme.of(context).primaryColor,
            ),
            const DrawerRow(
              icon: Icons.credit_card,
              name: 'Payment Methods',
              desc: 'Add credit & debit cards',
              route: '/payment-methods',
            ),
            Divider(
              color: Theme.of(context).primaryColor,
            ),
            const DrawerRow(
              icon: Icons.group,
              name: 'Refer to Friends',
              desc: 'Share with your friends',
              route: '',
            ),
            Divider(
              color: Theme.of(context).primaryColor,
            ),
            const DrawerRow(
              icon: Icons.exit_to_app,
              name: 'Logout',
              desc: 'Logout from your account',
              route: '',
            ),
            SizedBox(
              height: 40,
            ),
            const DrawerNotificationsTitle(),
            SizedBox(
              height: 20,
            ),
            DrawerRow(
              icon: Icons.notifications,
              name: 'Push Notifications',
              desc: 'Toggle notifications on or off',
              route: '',
              child: Transform.scale(
                scale: 0.65,
                child: CustomSwitch(
                  activeColor: Theme.of(context).accentColor,
                  value: status,
                  onChanged: (value) {
                    print("VALUE : $value");
                    setState(() {
                      status = value;
                    });
                    throw Exception("Testing crashlytics!");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
