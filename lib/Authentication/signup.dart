import 'package:auction_application/Authentication/signup_form.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(
          16.0,
        ),
        children: <Widget>[
          const SizedBox(
            height: 80.0,
          ),
          // logo
          Column(
            children: const [
              Image(
                image: AssetImage(
                  'assets/images/logo.png',
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
          const Text(
            'Welcome!',
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(
              8.0,
            ),
            child: SignupForm(),
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const Text(
                      'Already here  ?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        ' Get Logged in Now!',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
