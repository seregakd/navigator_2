import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigator_2/router/auth_guard.dart';

class LoginPage extends StatelessWidget {
  final void Function(bool isLoggedIn)? onLoginResult;

  const LoginPage({
    Key? key,
    this.onLoginResult
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Login Page"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => _login(context),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white,)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _login(BuildContext context) {
    isAuthenticated = true;
    onLoginResult?.call(true);
  }
}
