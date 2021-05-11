import 'package:flutter/material.dart';

import '../widgets/round_password_field.dart';
import '../widgets/round_button.dart';

class ChangePassword extends StatelessWidget {
  static final String routeName = "/change-password";
  final FocusNode password = FocusNode();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change Password',
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
        child: Form(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 25,
              right: 25,
            ),
            child: Column(
              children: [
                Text(
                  'Fill in the form below to change your password!',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        color: Theme.of(context).primaryColor.withOpacity(.7),
                      ),
                ),
                SizedBox(
                  height: size.height * .03,
                ),
                RoundedPasswordField(
                  hintText: "Old Password",
                  node: password,
                  onSaved: (value) {},
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                RoundedPasswordField(
                  hintText: "New Password",
                  node: password,
                  onSaved: (value) {},
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                RoundedPasswordField(
                  hintText: "Confirm New Password",
                  node: password,
                  onSaved: (value) {},
                ),
                SizedBox(
                  height: size.height * .4,
                ),
                RoundButton(
                  text: "UPDATE",
                  color: Theme.of(context).accentColor,
                  txtColor: Color(0xfff2f2f2),
                  function: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
