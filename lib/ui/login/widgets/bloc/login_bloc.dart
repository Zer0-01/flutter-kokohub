import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_kokohub/repository/login_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;

  LoginBloc({required this.loginRepository}) : super(const LoginState()) {
    on<SignUpButtonPressed>(_mapSignUpButtonPressedEventToState);
    on<ResetNavigationEvent>(_mapResetNavigationEventToState);
  }

  void _mapSignUpButtonPressedEventToState(
      SignUpButtonPressed event, Emitter<LoginState> emit) {
    try {
      emit(state.copyWith(isNavigate: true));
    } catch (error) {
      emit(state.copyWith(isNavigate: false));
    }
  }

  void _mapResetNavigationEventToState(
      ResetNavigationEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(isNavigate: false));
  }
}
