import 'package:flutter/material.dart';

class Question_again extends StatelessWidget {
  final String question;
  Question_again(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(question,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
    );
  }
}
