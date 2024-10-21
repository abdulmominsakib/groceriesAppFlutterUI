import 'package:flutter/material.dart';

import 'app_routes.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({
    Key? key,
    this.errorMessage,
  }) : super(key: key);

  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error,
            size: 54,
          ),
          SizedBox(height: 32),
          Text(
            'No Page Found',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
          ),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.initial);
                },
                label: const Text('Go Home'),
                icon: const Icon(Icons.arrow_back),
              ),
            ),
          )
        ],
      ),
    );
  }
}
