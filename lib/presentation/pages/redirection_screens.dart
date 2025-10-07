import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      const Scaffold(body: Center(child: CircularProgressIndicator()));
}

class NotFoundScreen extends StatelessWidget {
  static const String routeName = '/not-found';

  final String path;

  const NotFoundScreen({super.key, required this.path});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('404')),
    body: Center(child: Text('No route for: $path')),
  );
}
