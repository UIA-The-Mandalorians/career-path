import 'package:app/business/auth/auth_service.dart';
import 'package:bloc/bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:meta/meta.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required AuthService authService})
      : _authService = authService,
        super(const LoginState()) {
    on<LoginButtonPressedEvent>(_handleLoginWithEmailAndPasswordEvent);
    on<LoginEmailChangedEvent>(_handleLoginEmailChangedEvent);
    on<LoginPasswordChangedEvent>(_handleLoginPasswordChangedEvent);
  }

  final AuthService _authService;

  Future<void> _handleLoginEmailChangedEvent(
    LoginEmailChangedEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(email: event.email));
  }

  Future<void> _handleLoginPasswordChangedEvent(
    LoginPasswordChangedEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(password: event.password));
  }

  Future<void> _handleLoginWithEmailAndPasswordEvent(
    LoginButtonPressedEvent event,
    Emitter<LoginState> emit,
  ) async {
    try {
      await _authService.signInWithEmailAndPassword(
        email: state.email,
        password: state.password,
      );
      print(state.email);
      print(state.password);
      emit(state.copyWith(message: 'Success', status: LoginStatus.success));
    } catch (e) {
      emit(state.copyWith(message: e.toString(), status: LoginStatus.failure));
    }
  }
}
