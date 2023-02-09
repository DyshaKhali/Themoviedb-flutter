// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors,prefer_const_literals_to_create_immutables, prefer_const_declarations, avoid_init_to_null, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_auth_themoviedb/Theme/app_button_style.dart';

class AuthWidget extends StatefulWidget {
  AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login to your Account'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(fontSize: 16, color: Colors.black);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          _FormWidget(),
          SizedBox(
            height: 25,
          ),
          Text(
            'In order to use the editing and rating capabilities of TMDb, as well as get personal recomendations you will need to login to your account. If you do not have an account, registering for an account is free and simple.',
            style: textStyle,
          ),
          SizedBox(
            height: 5,
          ),
          TextButton(
            style: AppButtonStyle.linkButton,
            onPressed: () {},
            child: Text('Register'),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'If you signed up but didn\'t get your vetification email.',
            style: textStyle,
          ),
          SizedBox(
            height: 5,
          ),
          TextButton(
            style: AppButtonStyle.linkButton,
            onPressed: () {},
            child: Text('Verify email'),
          ),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  _FormWidget({Key? key}) : super(key: key);

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController(text: 'admin');
  final _passwordTextController = TextEditingController(text: 'admin');
  String? errorText = null;

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      errorText = null;

      Navigator.of(context).pushReplacementNamed('/main_screen');
    } else {
      errorText = 'Не верный логин или пароль';
    }
    setState(() {});
  }

  void _resetPassword() {
    print('reset password');
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
      fontSize: 16,
      color: Colors.black,
    );
    final textFieldDecoration = const InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF01B4E4)),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      isCollapsed: true,
    );
    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(
            errorText,
            style: TextStyle(
              color: Colors.red,
              fontSize: 17,
            ),
          ),
          SizedBox(height: 20),
        ],
        Text(
          'Username',
          style: textStyle,
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          controller: _loginTextController,
          decoration: textFieldDecoration,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Password',
          style: textStyle,
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          controller: _passwordTextController,
          decoration: textFieldDecoration,
          obscureText: true,
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFF01B4E4)),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                textStyle: MaterialStateProperty.all(
                  TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                ),
              ),
              onPressed: _auth,
              child: Text('Login'),
            ),
            SizedBox(
              width: 30,
            ),
            TextButton(
              style: AppButtonStyle.linkButton,
              onPressed: _resetPassword,
              child: Text('Reset password'),
            ),
          ],
        )
      ],
    );
  }
}
