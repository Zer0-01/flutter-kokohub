import 'package:flutter/material.dart';
import 'package:flutter_kokohub/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_kokohub/ui/signup/widgets/sign_up_dropdown_widget.dart';
import 'package:flutter_kokohub/ui/signup/widgets/sign_up_text_field_widget.dart';

class SignupLayout extends StatelessWidget {
  SignupLayout({super.key});

  final List<String> roles = ['Teacher', 'Student'];

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppLocalizations.of(context)!.signup_get_started,
              style: const TextStyle(fontSize: 36),
            ),
            SignUpDropdownWidget(
              text: AppLocalizations.of(context)!.signup_role,
              dropdownMenuEntries:
                  roles.map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry(value: value, label: value);
              }).toList(),
            ),
            SignUpTextFieldWidget(
              text: localizations.signup_first_name,
            ),
            SignUpTextFieldWidget(
              text: localizations.signup_last_name,
            ),
            SignUpTextFieldWidget(
              text: localizations.signup_ic_number,
            ),
            SignUpTextFieldWidget(
              text: localizations.signup_phone_number,
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
