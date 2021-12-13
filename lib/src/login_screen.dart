import 'package:flutter/material.dart';
import 'package:login_signup/src/components/widget_input.dart';

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
  return const WidgetInput(
    name: 'Email',
    obscureText: false,
  );
}

Widget _buildPassword() {
  return const WidgetInput(name: "Password", obscureText: true);
}
