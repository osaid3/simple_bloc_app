import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc_app/auth/auth_provider.dart';
import 'package:simple_bloc_app/auth/bloc/auth_bloc.dart';
import 'package:simple_bloc_app/views/home_view.dart';
import 'package:simple_bloc_app/views/login_view.dart';

void main() {
  runApp(MaterialApp(
    home: BlocProvider<AuthBloc>(
      create: (context) => AuthBloc(provider: AuthProvider()),
      child: const HomePage(),
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc,AuthState>(
        builder: (context, state) {
          if (state is AuthStateLoggedOut) {
            return const LoginView();
          } else if (state is AuthStateLoggedIn) {
            return const HomeView();
          } else {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
        listener: (context, state) {});
  }
}
