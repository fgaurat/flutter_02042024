import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_gorouter/screens/first_page/first_page.dart';
import 'package:tp_gorouter/screens/home_page/home_page.dart';
import 'package:tp_gorouter/screens/second_page/second_page.dart';

void main() {
  runApp(const MainApp());
}

/*
 routes /
        /first
 */
final GoRouter _router = GoRouter(routes: [
  GoRoute(
    path: HomePage.route,
    builder: (context, state) => const HomePage(),  
  ),
  GoRoute(
      path: FirstPage.route, builder: (context, state) => const FirstPage()),
  GoRoute(
      path: SecondPage.route, 
      name: "hello",
      builder: (context, GoRouterState state) =>  SecondPage(name:state.pathParameters['name']??"empty"))
]);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
