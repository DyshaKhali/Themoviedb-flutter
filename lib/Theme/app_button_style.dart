// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors,prefer_const_literals_to_create_immutables, prefer_const_declarations

import 'package:flutter/material.dart';

abstract class AppButtonStyle {
  static final ButtonStyle linkButton = ButtonStyle(
    foregroundColor: MaterialStateProperty.all(const Color(0xFF01B4E4)),
    textStyle: MaterialStateProperty.all(
      TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
