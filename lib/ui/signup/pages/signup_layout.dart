import 'package:flutter/material.dart';
import 'package:flutter_kokohub/constants/app_colors.dart';

class SignupLayout extends StatelessWidget {
  SignupLayout({super.key});

  final List<String> roles = ['Teacher', 'Student'];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Get Started',
              style: TextStyle(fontSize: 36),
            ),
            Text("Role"),
            DropdownMenu(
              inputDecorationTheme: InputDecorationTheme(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30),
                  )),
              width: width,
              initialSelection: "",
              dropdownMenuEntries:
                  roles.map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry(value: value, label: value);
              }).toList(),
            ),
            Text("First name"),
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
            Text("Last name"),
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
            Text("IC number"),
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
            Text("Phone number"),
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
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.loginColor2),
                  child: Text("Next")),
            ),
            Text(
              "Already have an account? Log in",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
