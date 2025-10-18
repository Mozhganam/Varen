import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback onLogin;
  const LoginScreen({required this.onLogin, Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();
  final codeController = TextEditingController();
  bool sent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('ورود به وارِن', textAlign: TextAlign.center, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 40),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(labelText: 'شماره موبایل'),
            ),
            if (sent)
              TextField(
                controller: codeController,
                decoration: InputDecoration(labelText: 'کد تایید (123456)'),
              ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (!sent) setState(() => sent = true);
                else if (codeController.text.trim() == '123456') widget.onLogin();
              },
              child: Text(sent ? 'ورود' : 'ارسال کد تایید'),
            )
          ],
        ),
      ),
    );
  }
}
