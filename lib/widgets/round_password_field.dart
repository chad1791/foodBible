import 'package:flutter/material.dart';

import './round_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final Color containerColor;
  final Function onSaved;
  final FocusNode node;
  final String hintText;
  const RoundedPasswordField({
    Key key,
    this.onSaved,
    this.node,
    this.containerColor = const Color(0xfff2f2f2),
    this.hintText = "Password",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      containerColor: containerColor,
      child: TextFormField(
        onSaved: onSaved,
        obscureText: true,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            Icons.lock,
            color: Color(0xfff96d00),
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Color(0xfff96d00),
          ),
          border: InputBorder.none,
        ),
        focusNode: node,
        textInputAction: TextInputAction.done,
        validator: (value) {
          if (value.isEmpty) {
            return 'Please provide a password!';
          }
          return null;
        },
      ),
    );
  }
}
