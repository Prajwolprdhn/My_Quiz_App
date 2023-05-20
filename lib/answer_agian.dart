import 'package:flutter/material.dart';

class Answer_Again extends StatelessWidget {
  final String answer;
  final Function buttonPressed;

  Answer_Again(this.answer, this.buttonPressed);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => buttonPressed(), child: Text(answer));
  }
}
