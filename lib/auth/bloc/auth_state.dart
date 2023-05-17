part of 'auth_bloc.dart';

@immutable
abstract class AuthState {

  final bool loading;

  const AuthState({required this.loading});
}

class AuthStateLoggedIn extends AuthState {
 const AuthStateLoggedIn({required bool isLoading}) : 
 super(loading: isLoading);
}

class AuthStateLoggedOut extends AuthState {
 const AuthStateLoggedOut({required bool isLoading}) : 
 super(loading: isLoading);
}


