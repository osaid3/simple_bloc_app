part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class AuthEventLogin extends AuthEvent {}

class AuthEventLogout extends AuthEvent {}
