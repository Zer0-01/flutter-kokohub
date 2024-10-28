import 'package:flutter/material.dart';

class SignUpTextFieldWidget extends StatelessWidget {
  final String text;
  const SignUpTextFieldWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Text(text),
        ),
        const SizedBox(height: 4.0),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ],
    );
  }
}
