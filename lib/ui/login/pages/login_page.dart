import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kokohub/repository/login_repository.dart';
import 'package:flutter_kokohub/ui/login/pages/login_layout.dart';
import 'package:flutter_kokohub/ui/login/widgets/bloc/login_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RepositoryProvider(
          create: (context) => LoginRepository(),
          child: MultiBlocProvider(providers: [
            BlocProvider<LoginBloc>(
              create: (context) =>
                  LoginBloc(loginRepository: context.read<LoginRepository>()),
            )
          ], child: const LoginLayout())),
    );
  }
}
