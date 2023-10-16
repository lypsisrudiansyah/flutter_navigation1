import 'package:flutter/material.dart';
import 'package:flutter_navigation1/core.dart';

class AppRoute {
  Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const LoginView(),
    '/dashboard': (context) => const DashboardView(),
    '/login': (context) => const LoginView(),
  };
}