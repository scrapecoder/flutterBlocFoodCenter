part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends AuthenticationEvent {}

class LoggedIn extends AuthenticationEvent {
  final String token;
  final String email;
  LoggedIn({required this.token, required this.email});

  @override
  List<Object> get props => [token, email];
}

class LoggedOut extends AuthenticationEvent {}
