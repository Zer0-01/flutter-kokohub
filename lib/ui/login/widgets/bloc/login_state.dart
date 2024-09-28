import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  final bool isNavigate;

  const LoginState({this.isNavigate = false});

  @override
  List<Object?> get props => [isNavigate];

  LoginState copyWith({bool? isNavigate}) {
    return LoginState(
      isNavigate: isNavigate ?? this.isNavigate,
    );
  }
}
