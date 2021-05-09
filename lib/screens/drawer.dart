import 'package:flutter/material.dart';

import '../widgets/drawer_title.dart';
import '../widgets/drawer_row.dart';
import '../widgets/drawer_notifications_title.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            DrawerRow(
              icon: Icons.home,
              name: 'Home',
              desc: 'Navigate to home screen',
              route: '',
            ),
            Divider(
              color: Theme.of(context).primaryColor,
            ),
            DrawerRow(
              icon: Icons.person,
              name: 'Profile Information',
              desc: 'Change your account info',
              route: '',
            ),
            Divider(
              color: Theme.of(context).primaryColor,
            ),
            DrawerRow(
              icon: Icons.edit,
              name: 'Change Password',
              desc: 'Change your password',
              route: '',
            ),
            Divider(
              color: Theme.of(context).primaryColor,
            ),
            DrawerRow(
              icon: Icons.credit_card,
              name: 'Payment Methods',
              desc: 'Add credit & debit cards',
              route: '',
            ),
            Divider(
              color: Theme.of(context).primaryColor,
            ),
            DrawerRow(
              icon: Icons.group,
              name: 'Refer to Friends',
              desc: 'Share with your friends',
              route: '',
            ),
            Divider(
              color: Theme.of(context).primaryColor,
            ),
            DrawerRow(
              icon: Icons.exit_to_app,
              name: 'Logout',
              desc: 'Logout from your account',
              route: '',
            ),
            SizedBox(
              height: 40,
            ),
            DrawerNotificationsTitle(),
            SizedBox(
              height: 20,
            ),
            DrawerRow(
              icon: Icons.notifications,
              name: 'Push Notifications',
              desc: 'Toggle notifications on or off',
              route: '',
            ),
          ],
        ),
      ),
    );
  }
}
