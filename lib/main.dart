import 'package:flutter/material.dart';
import 'package:movie_project/widgets/login_screen/auth_widget.dart';
import 'package:movie_project/widgets/main_screen/main_screen_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Movie Project',
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(backgroundColor: Color.fromRGBO(3, 37, 65, 1)),
      ),
      routes: {
        '/auth': (context) => AuthWidget(),
        '/main_screen': (context) => MainScreenWidget(),
      },
      // home: AuthWidget(),
      initialRoute: '/auth',
    );
  }
}
