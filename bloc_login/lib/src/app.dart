import 'package:flutter/material.dart';

import 'blocs/provider.dart';
import 'screens/login_screen.dart';

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Login',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
