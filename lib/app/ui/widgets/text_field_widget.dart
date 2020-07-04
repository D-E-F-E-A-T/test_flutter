import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  String labelText;
  int maxLines;
  final Stream<String> stream;
  final Function(String) onChanged;

  TextFieldWidget(
      {this.labelText, this.maxLines = 1, this.stream, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: stream,
      builder: (context, snapshot) {
        return TextField(
          decoration: InputDecoration(
            labelText: labelText,
            labelStyle: TextStyle(
              fontWeight: FontWeight.w600,
              color: snapshot.hasError ? Colors.red : Colors.blue,
              fontSize: 18,
            ),
            errorStyle: const TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
            errorText: snapshot.error,
          ),
          onChanged: onChanged,
          maxLines: maxLines,
        );
      },
    );
  }
}
