// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_auth_themoviedb/Theme/app_colors.dart';
import 'package:flutter_auth_themoviedb/widgets/auth/auth_widget.dart';
import 'package:flutter_auth_themoviedb/widgets/main_screen/main_screen_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TheMovieDB',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.mainColor,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),
      routes: {
        '/auth': ((context) => AuthWidget()),
        '/main_screen': ((context) => MainScreenWidget()),
      },
      initialRoute: '/auth',
    );
  }
}
