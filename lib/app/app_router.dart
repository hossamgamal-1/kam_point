import 'package:flutter/material.dart';
import 'package:kam_point/presentation/screens/game_page.dart';

import '../presentation/screens/home_page.dart';

class RoutesNames {
  static const String homeRoute = '/';
  static const String gameRoute = '/game';
}

class AppRouter {
  static Route getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.homeRoute:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case RoutesNames.gameRoute:
        return MaterialPageRoute(builder: (context) => const GamePage());
      default:
        return MaterialPageRoute(builder: (context) => const NoRoutesFound());
    }
  }
}

class NoRoutesFound extends StatelessWidget {
  const NoRoutesFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NO ROUTES FOUND')),
    );
  }
}
