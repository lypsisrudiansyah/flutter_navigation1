import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/module/dashboard_view.dart';
import 'package:go_router_example/module/product_detail_view.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const DashboardView();
      },
      routes: [
        GoRoute(
          path: 'product-show/:id',
          builder: (BuildContext context, GoRouterState state) {
            final id = int.tryParse(state.pathParameters['id']!) ?? 0;
            return ProductDetailView(
              id: id,
            );
          },
        ),
      ],
    ),
  ],
);
