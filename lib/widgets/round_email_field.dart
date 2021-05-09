import 'package:flutter/material.dart';

import './round_field_container.dart';

class RoundedEmailField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final Color containerColor;
  final Function onSaved;
  final FocusNode node;
  const RoundedEmailField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onSaved,
    this.node,
    this.containerColor = const Color(0xfff2f2f2),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      containerColor: containerColor,
      child: TextFormField(
        onSaved: onSaved,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Color(0xfff96d00),
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (_) {
          FocusScope.of(context).requestFocus(node);
        },
        validator: (value) {
          if (value.isEmpty) {
            return 'Please provide an email!';
          }
          return null;
        },
      ),
    );
  }
}
