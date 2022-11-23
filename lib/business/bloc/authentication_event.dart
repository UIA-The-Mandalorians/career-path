part of 'authentication_bloc.dart';


abstract class LoginEvent  {
  const LoginEvent();
  @override
  List<Object?> get props => [];
}

class LoginButtonPressedEvent extends LoginEvent {
  const LoginButtonPressedEvent();
}

class LoginEmailChangedEvent extends LoginEvent {
  const LoginEmailChangedEvent({required this.email});

  final String email;

  @override
  List<Object> get props => [email];
}

class LoginPasswordChangedEvent extends LoginEvent {
  const LoginPasswordChangedEvent({required this.password});

  final String password;

  @override
  List<Object> get props => [password];
}