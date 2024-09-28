import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kokohub/repository/login_repository.dart';
import 'package:flutter_kokohub/ui/login/widgets/bloc/login_event.dart';
import 'package:flutter_kokohub/ui/login/widgets/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;

  LoginBloc({required this.loginRepository}) : super(const LoginState()) {
    on<SignUpButtonPressed>(_mapSignUpButtonPressedEventToState);
  }

  void _mapSignUpButtonPressedEventToState(
      SignUpButtonPressed event, Emitter<LoginState> emit) {
    try {
      emit(state.copyWith(isNavigate: true));
    } catch (error) {
      emit(state.copyWith(isNavigate: false));
    }
  }
}
