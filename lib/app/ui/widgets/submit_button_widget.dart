import 'package:flutter/material.dart';

class SubmitButtonWidget extends StatelessWidget {
  bool disabled;
  Function onPressed;
  SubmitButtonWidget({this.disabled, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      disabledColor: Colors.blueGrey[300],
      color: Colors.blueAccent,
      onPressed: disabled != null && disabled ? onPressed : null,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 20.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Text(
                "Entrar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
