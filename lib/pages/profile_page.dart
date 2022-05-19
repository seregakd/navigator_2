import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigator_2/router/auth_guard.dart';
import 'package:navigator_2/router/router.gr.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Profile Page"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Authorized: $isAuthenticated',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20,),
              const Text(
                'Authorized user',
                style: TextStyle(fontSize: 18),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 18),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  backgroundColor: Colors.greenAccent,
                ),
                onPressed: () {
                  context.router.push(const ProfileSettingsRoute());
                },
                child: const Text(
                  'next',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
