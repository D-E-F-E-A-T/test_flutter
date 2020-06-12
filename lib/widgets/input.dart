import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool obscure;

  InputField({this.icon, this.label, this.obscure});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black26, width: 0.5),
        ),
      ),
      child: TextFormField(
        obscureText: obscure,
        style: TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          icon: Icon(icon, color: Colors.black),
          border: InputBorder.none,
          hintText: label,
          hintStyle: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
          contentPadding: EdgeInsets.only(
            top: 30,
            right: 30,
            bottom: 30,
            left: 5,
          ),
        ),
      ),
    );
  }
}
