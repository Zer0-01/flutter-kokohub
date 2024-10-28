import 'package:flutter/material.dart';

class SignUpDropdownWidget extends StatelessWidget {
  final String text;
  final List<DropdownMenuEntry<String>> dropdownMenuEntries;
  const SignUpDropdownWidget(
      {super.key, required this.text, required this.dropdownMenuEntries});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Text(text),
        ),
        const SizedBox(height: 4.0),
        DropdownMenu(
          inputDecorationTheme: InputDecorationTheme(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30),
              )),
          width: width,
          initialSelection: "",
          dropdownMenuEntries: dropdownMenuEntries,
        ),
      ],
    );
  }
}
