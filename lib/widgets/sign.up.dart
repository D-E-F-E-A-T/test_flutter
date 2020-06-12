import 'package:base/pages/create_account.page.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.only(
        top: 50,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CreateAccountage(),
          ),
        );
      },
      child: Text(
        "Registre-se",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.black,
            fontSize: 15,
            letterSpacing: 0.5),
      ),
    );
  }
}
