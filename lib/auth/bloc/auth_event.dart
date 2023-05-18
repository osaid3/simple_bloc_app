part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {
  const AuthEvent();
}

class AuthEventLogin extends AuthEvent {

  const AuthEventLogin();
}

class AuthEventLogout extends AuthEvent {
  const AuthEventLogout();
}
