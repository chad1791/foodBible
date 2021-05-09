import 'package:flutter/material.dart';

import '../widgets/round_button.dart';
import '../widgets/round_email_field.dart';
import '../widgets/round_password_field.dart';
import '../widgets/already_have_an_account.dart';

import '../screens/homescreen.dart';
import '../screens/register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _form = GlobalKey<FormState>();
  final FocusNode _password = FocusNode();

  Map<String, String> _authData = {
    'email': '',
    'password': '',
  };

  /*var _isLoading = false;

  void _showErrorDialog(String msg) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('An Error Occurred!'),
        content: Text(msg),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Okay'),
          ),
        ],
      ),
    );
  }

  Future<void> _submit() async {
    if (!_form.currentState.validate()) {
      // Invalid!
      return;
    }

    _form.currentState.save();

    setState(() {
      _isLoading = true;
    });

    try {
      await Provider.of<Auth>(context, listen: false)
          .login(_authData['email'], '', _authData['password'], deviceToken);
      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    } on HttpException catch (e) {
      //print(e.toString());

      var errorMsg = 'Authentication failed!';

      if (e.toString().contains('EMAIL_EXISTS')) {
        errorMsg = 'This email is already in use by another user!';
      } else if (e.toString().contains('INVALID_EMAIL')) {
        errorMsg = 'Please provide a valid email address!';
      } else if (e.toString().contains('WEAK_PASSWORD')) {
        errorMsg = 'Please provide a password greater than 6 characters!';
      } else if (e.toString().contains('EMAIL_NOT_FOUND')) {
        errorMsg = 'Could not find a user with that email!';
      } else if (e.toString().contains('INVALID_PASSWORD')) {
        errorMsg = 'Invalid password!';
      }

      _showErrorDialog(errorMsg);
    } catch (e) {
      print(e);
      const errorMsg = 'Error authenticating user. Please try again later!';
      _showErrorDialog(errorMsg);
    }

    setState(() {
      _isLoading = false;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
              left: 20.0,
              top: 20,
            ),
            child: Form(
              key: _form,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * .09,
                  ),
                  Text(
                    'LOGIN',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    height: size.height * .35,
                  ),
                  RoundedEmailField(
                    hintText: "Your email",
                    onSaved: (value) {
                      _authData['email'] = value;
                    },
                    node: _password,
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  RoundedPasswordField(
                    onSaved: (value) {
                      _authData['password'] = value;
                    },
                    node: _password,
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  RoundButton(
                    text: "LOGIN",
                    function: () {
                      print(_authData['email']);
                      print(_authData['password']);
                      Navigator.of(context).pushNamed(HomeScreen.routeName);
                    },
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  AlreadyHaveAnAccount(
                    onPress: () {
                      Navigator.of(context).pushNamed(Register.routeName);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
