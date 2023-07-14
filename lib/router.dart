import 'package:flutter/material.dart';

class PageRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {}
    return MaterialPageRoute(
      builder: (context) {
        return UnknownRoutePage(targetRoute: settings.name!);
      },
    );
  }
}

class UnknownRoutePage extends StatelessWidget {
  final String targetRoute;
  const UnknownRoutePage({
    super.key,
    required this.targetRoute,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "The route '$targetRoute' was not found.",
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
