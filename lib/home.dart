import 'package:auction_application/Authentication/authentication_helper.dart';
import 'package:auction_application/Authentication/login.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Welcome'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AuthenticationHelper().signOut().then(
                (_) => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (contex) => const Login(),
                  ),
                ),
              );
        },
        child: const Icon(Icons.logout),
        tooltip: 'Logout',
      ),
    );
  }
}
