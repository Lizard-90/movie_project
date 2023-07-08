import 'package:flutter/material.dart';
import 'package:movie_project/widgets/login_screen/resourses.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login to Account"),
        centerTitle: true,
      ),
      body: ListView(
        children: [_HeaderWidget()],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          Text(
            topHeaderString,
            style: topHeaderStyle,
          ),
          SizedBox(height: 25),
          _AuthForm(),
          SizedBox(height: 25),
          Text(
            secondHeaderString,
            style: topHeaderStyle,
          ),
          TextButton(
            onPressed: () {},
            style: AbstButtonStyles.textBtnStyle,
            child: Text("Register"),
          ),
          SizedBox(height: 25),
          Text(
            secondHeaderString2,
            style: topHeaderStyle,
          ),
          TextButton(
            onPressed: () {},
            style: AbstButtonStyles.textBtnStyle,
            child: Text("Verify E-Mail"),
          ),
        ],
      ),
    );
  }
}

class _AuthForm extends StatefulWidget {
  const _AuthForm({super.key});

  @override
  State<_AuthForm> createState() => __AuthFormState();
}

class __AuthFormState extends State<_AuthForm> {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();
  String? errorText = null;

  void _auth() {
    final login = _loginController.text;
    final password = _passwordController.text;

    if (login == 'admin' && password == 'admin') {
      print("open application");
      errorText = null;
    } else {
      print('Error login');
      errorText = "Wrong login / password";
    }
    setState(() {});
  }

  void _resetPassword() {
    print("Password reseted");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(
            errorText!,
            style: TextStyle(color: Colors.red, fontSize: 17),
          ),
          SizedBox(
            height: 20,
          ),
        ],
        const Text(
          "Username",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 5),
        TextField(
          controller: _loginController,
          decoration: formDecoration,
        ),
        const SizedBox(height: 20),
        const Text(
          "Password",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 5),
        TextField(
          controller: _passwordController,
          obscureText: true,
          decoration: formDecoration,
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            ElevatedButton(
              onPressed: _auth,
              style: AbstButtonStyles.elevateBtnStyle,
              child: Text("Login"),
            ),
            SizedBox(
              width: 20,
            ),
            TextButton(
              onPressed: _resetPassword,
              style: AbstButtonStyles.textBtnStyle,
              child: Text("Reset Password"),
            ),
          ],
        ),
      ],
    );
  }
}
