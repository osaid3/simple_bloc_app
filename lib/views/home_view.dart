import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth/bloc/auth_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('You are logged in'),
      ),
      body: Center(
          child: TextButton(
        child: const Text('Log out'),
        onPressed: () {
          context.read<AuthBloc>().add(const AuthEventLogout());
        },
      )),
    );
  }
}
