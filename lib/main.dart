import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/pages/add_page.dart';
import 'package:todo_app/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/providers/todo_provider.dart';

void main() {
  // we add the change notifier then we use the create func for the notifer
  //then add context between () and call the provider that i have created in provider folder
  //last step add, then call the MyApp();
  runApp(ChangeNotifierProvider(create: (context) => toDos(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/add',
        builder: (context, state) => AddPage(),
      ),
    ],
  );
}
