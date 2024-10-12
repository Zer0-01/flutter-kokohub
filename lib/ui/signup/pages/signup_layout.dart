import 'package:flutter/material.dart';
import 'package:flutter_kokohub/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              AppLocalizations.of(context)!.signup_get_started,
              style: TextStyle(fontSize: 36),
            ),
            Column(
              children: [
                Text(AppLocalizations.of(context)!.signup_role),
                DropdownMenu(
                  inputDecorationTheme: InputDecorationTheme(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
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
              ],
            ),
            Text(AppLocalizations.of(context)!.signup_first_name),
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
            Text(AppLocalizations.of(context)!.signup_last_name),
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
            Text(AppLocalizations.of(context)!.signup_ic_number),
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
            Text(AppLocalizations.of(context)!.signup_phone_number),
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
                  child: const Text("Next")),
            ),
            const Text(
              "Already have an account? Log in",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
