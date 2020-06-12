import 'package:base/widgets/input.dart';
import "package:flutter/material.dart";

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: <Widget>[
            InputField(
              label: "Email",
              obscure: false,
              icon: Icons.alternate_email,
            ),
             InputField(
              label: "Senha",
              obscure: true,
              icon: Icons.lock_outline,
            ),
          ],
        ),
      ),
    );
  }
}
