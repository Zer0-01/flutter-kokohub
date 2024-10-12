import 'package:flutter/material.dart';

import '../../../utils/authentication_validator.dart';
import 'text_field_login_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EmailFormField extends StatelessWidget {
  final TextEditingController emailController;

  const EmailFormField({
    super.key,
    required this.emailController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0, left: 24.0, right: 24.0),
      child: TextFieldLoginWidget(
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        keyboardAction: TextInputAction.next,
        labelText: 'Email',
        onSaved: (value) {
          emailController.text = value!;
        },
        validator: (value) => AuthenticationValidator.emailValidation(value),
      ),
    );
  }
}

class PasswordFormField extends StatelessWidget {
  final TextEditingController passwordController;

  const PasswordFormField({
    super.key,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 24.0, right: 24.0),
      child: TextFieldLoginWidget(
        controller: passwordController,
        isPassword: true,
        labelText: AppLocalizations.of(context)!.login_password,
        keyboardAction: TextInputAction.next,
        onSaved: (value) {
          passwordController.text = value!;
        },
        validator: (value) => AuthenticationValidator.normalValidation(value),
      ),
    );
  }
}
