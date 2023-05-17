import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:simple_bloc_app/auth/auth_provider.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthProvider provider;
  AuthBloc({required this.provider})
      : super(const AuthStateLoggedOut(isLoading: false)) {
    on<AuthEventLogin>((event, emit) async {
      emit(const AuthStateLoggedOut(isLoading: true));
      await provider.login();
      emit(const AuthStateLoggedIn(isLoading: false));
    });
    on<AuthEventLogout>((event, emit) async {
      emit(const AuthStateLoggedIn(isLoading: true));
      await provider.logout();
      emit(const AuthStateLoggedOut(isLoading: false));
    });
  }
}
