import 'package:flutter/material.dart';
import 'package:prueba_qw/screens/home_screen.dart';
import 'package:prueba_qw/screens/user_form_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
        'userform': (_) => UserFormScreen(),
      },
      title: 'Material App',
    );
  }
}
