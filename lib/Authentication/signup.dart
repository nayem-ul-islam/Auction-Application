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
              FlutterLogo(
                size: 55.0,
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

//   Container buildLogo() {
//     return Container(
//       height: 80.0,
//       width: 80.0,
//       decoration: const BoxDecoration(
//           borderRadius: BorderRadius.all(
//             Radius.circular(
//               10.0,
//             ),
//           ),
//           color: Colors.blue),
//       child: const Center(
//         child: Text(
//           "T",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 60.0,
//           ),
//         ),
//       ),
//     );
//   }
// }