import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  final String hintText;
  final String labelText;
  final bool obscureText;
  final Function(String) onChange;
  final Stream<String> stream;

  Field({
    @required this.labelText,
    @required this.hintText,
    @required this.onChange,
    @required this.stream,
    @required this.obscureText,
  });

  OutlineInputBorder _buildBorder(bool condition) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: condition ? Colors.red : Colors.blue[900],
      ),
      borderRadius: BorderRadius.circular(20),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: stream,
      builder: (context, snapshot) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
          alignment: Alignment.center,
          padding: const EdgeInsets.only(left: 0.0, right: 10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  onChanged: onChange,
                  obscureText: obscureText,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    labelText: labelText,
                    border: _buildBorder(snapshot.hasError),
                    focusedBorder: _buildBorder(snapshot.hasError),
                    enabledBorder: _buildBorder(snapshot.hasError),
                    hintText: hintText,
                    errorStyle: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                    hintStyle: TextStyle(color: Colors.grey),
                    labelStyle: TextStyle(
                      color: snapshot.hasError ? Colors.red : Colors.blue[900],
                      fontWeight: FontWeight.w600,
                    ),
                    filled: true,
                    fillColor: Colors.black.withAlpha(20),
                    errorText: snapshot.error,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
