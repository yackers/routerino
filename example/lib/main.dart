import 'package:flutter/material.dart';
import 'package:named_routes/named_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Example',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Home Page'),
            ElevatedButton(
              onPressed: () {
                context.push(() => LoginPage());
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text('Login Page'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.popUntilRoot();
                },
                child: Text('Back to home page'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.push(() => RegisterPage());
                },
                child: Text('Register'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Register Page'),
            ElevatedButton(
              onPressed: () {
                context.popUntilRoot();
              },
              child: Text('Back to home page'),
            ),
          ],
        ),
      ),
    );
  }
}