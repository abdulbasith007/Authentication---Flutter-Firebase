import 'package:flutter/material.dart';
import 'auth_service.dart';

class ProfileScreen extends StatelessWidget {
  final AuthService _authService = AuthService();

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Email: ${_authService.currentUser?.email ?? "Not Signed In"}"),
            ElevatedButton(
              onPressed: () async {
                // Change password logic (you can implement it later)
              },
              child: const Text("Change Password"),
            ),
            ElevatedButton(
              onPressed: () async {
                await _authService.signOut();
                Navigator.pop(context); // Navigate back to login
              },
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
