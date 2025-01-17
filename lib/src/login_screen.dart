import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_signup/src/components/widget_button.dart';
import 'package:login_signup/src/components/widget_input.dart';
import 'package:login_signup/src/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginScreen> {
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
                const SizedBox(height: 100),
                _buildImage(),
                const SizedBox(height: 20),
                const Text(
                  "Welcome Back",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      decoration: TextDecoration.none),
                ),
                const Text(
                  "Sign to continue",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      color: Colors.grey,
                      fontSize: 15,
                      decoration: TextDecoration.none),
                ),
                const SizedBox(
                  height: 50,
                ),
                _buildEmail(),
                const SizedBox(
                  height: 15,
                ),
                _buildPassword(),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const <Widget>[
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          color: Colors.green,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
                const SizedBox(height: 35),
                _buttonLogin(),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Don't have account?",
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                          decoration: TextDecoration.none),
                    ),
                    TextButton(
                      // chuyển màn hình
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.green,
                        textStyle: const TextStyle(fontSize: 15)
                      ),
                      child: const Text("Create a new account"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

Widget _buildImage() {
  return SizedBox(
    height: 135,
    child: Image.network(
        'https://thumbs.dreamstime.com/b/default-avatar-profile-icon-vector-social-media-user-image-182145777.jpg'),
  );
}

Widget _buildEmail() {
  return const WidgetInput(name: "Email", obscureText: false, iconData: Icons.email_outlined);
}

Widget _buildPassword() {
  return const WidgetInput(name: "Password", obscureText: true, iconData: Icons.lock_outline);
}

Widget _buttonLogin() {
  return const WidgetButton(name: "Login");
}
