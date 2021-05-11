import 'package:flutter/material.dart';

class PaymentMethods extends StatelessWidget {
  static final String routeName = "/payment-methods";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Methods"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
