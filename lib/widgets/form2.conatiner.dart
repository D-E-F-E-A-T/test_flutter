import 'package:base/widgets/input.dart';
import "package:flutter/material.dart";

class Form2Container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: <Widget>[
             InputField(
              label: "Name",
              obscure: false,
              icon: Icons.person_outline,
            ),
             InputField(
              label: "Surname",
              obscure: false,
              icon: Icons.person_outline,
            ),
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
            InputField(
              label: "Confirmar Senha",
              obscure: true,
              icon: Icons.lock_outline,
            ),
          ],
        ),
      ),
    );
  }
}
