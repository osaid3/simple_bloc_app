import 'package:flutter/material.dart';

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
        onPressed: () {},
      )),
    );
  }
}
