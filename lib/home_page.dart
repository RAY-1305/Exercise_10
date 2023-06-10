import 'package:flutter/material.dart';
import 'list_user.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text('List User'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.exit_to_app,
            ),
          ),
        ],
      ),
      body: const ListUser(),
    );
  }
}
