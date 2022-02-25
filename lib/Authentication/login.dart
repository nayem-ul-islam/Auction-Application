import 'package:auction_application/Authentication/login_form.dart';
import 'package:auction_application/Authentication/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(
          8.0,
        ),
        children: [
          const SizedBox(
            height: 80,
          ),
          Column(
            children: const [
              Image(
                image: AssetImage(
                  'assets/images/logo.png',
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                'Welcome back!',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
          const Padding(
            padding: EdgeInsets.all(
              16.0,
            ),
            child: LoginForm(),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30.0,
              ),
              const Text(
                'New here?  ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const Signup()),
                    ),
                  );
                },
                child: const Text(
                  'Get Registered Now!',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
