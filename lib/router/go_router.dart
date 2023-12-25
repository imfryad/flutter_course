// GoRouter configuration
import 'package:go_router/go_router.dart';

import '../communities_screen.dart';
import '../main.dart';
import '../profile_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'HomeScreen',
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: 'CommunitiesScreen',
      path: '/communitiesscreen/:id',
      builder: (context, state) => const CommunitiesScreen(),
    ),
    GoRoute(
      name: 'ProfileScreen',
      path: '/profilescreen/:id',
      builder: (context, state) => const ProfileScreen(),
    ),
  ],
);
