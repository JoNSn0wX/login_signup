import 'package:flutter/material.dart';
import 'package:login_signup/src/components/widget_button.dart';
import 'package:login_signup/src/components/widget_input.dart';
import 'package:login_signup/src/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 90),
                const Text(
                  "Create Account",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      decoration: TextDecoration.none),
                ),
                const Text(
                  "Create a new account",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      color: Colors.grey,
                      fontSize: 15,
                      decoration: TextDecoration.none),
                ),
                const SizedBox(height: 30),
                _buildName(),
                const SizedBox(height: 15),
                _buildEmail(),
                const SizedBox(height: 15),
                _buildPhone(),
                const SizedBox(height: 15),
                _buildPassword(),
                const SizedBox(height: 15),
                _buildConfirmPassword(),
                const SizedBox(height: 35),
                _buttonLogin(),
                const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Already have a account?",
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                          decoration: TextDecoration.none),
                    ),
                    TextButton(
                      // chuyển màn hình
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                      },
                      style: TextButton.styleFrom(
                          primary: Colors.green,
                          textStyle: const TextStyle(fontSize: 15)),
                      child: const Text("Login"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

Widget _buildName() {
  return const WidgetInput(
    name: 'Name',
    obscureText: false,
    iconData: Icons.person_outline,
  );
}

Widget _buildEmail() {
  return const WidgetInput(
    name: 'Email',
    obscureText: false,
    iconData: Icons.email_outlined,
  );
}

Widget _buildPhone() {
  return const WidgetInput(
    name: 'Phone',
    obscureText: false,
    iconData: Icons.phone_iphone_outlined
  );
}

Widget _buildPassword() {
  return const WidgetInput(name: "Password", obscureText: true,iconData: Icons.lock_outline);
}

Widget _buildConfirmPassword() {
  return const WidgetInput(name: "Confirm Password", obscureText: true,iconData: Icons.lock_outline);
}

Widget _buttonLogin() {
  return const WidgetButton(name: "Create Account");
}
