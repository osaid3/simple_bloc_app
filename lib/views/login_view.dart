import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc_app/auth/bloc/auth_bloc.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in'),
      ),
      body: Center(
          child: TextButton(
        child: const Text('Log in'),
        onPressed: () {
          context.read<AuthBloc>().add(const AuthEventLogin());
        },
      )),
    );
  }
}
