import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';

void main() => runApp(VarenApp());

class VarenApp extends StatefulWidget {
  @override
  _VarenAppState createState() => _VarenAppState();
}

class _VarenAppState extends State<VarenApp> {
  ThemeMode _themeMode = ThemeMode.light;
  void toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'وارِن | خرید و فروش ملک در بابل',
      debugShowCheckedModeBanner: false,
      locale: const Locale('fa', 'IR'),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFF0F6B45),
        fontFamily: 'Vazir',
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF0F6B45),
        fontFamily: 'Vazir',
      ),
      themeMode: _themeMode,
      routes: {
        '/': (_) => LoginScreen(onLogin: () => Navigator.pushReplacementNamed(context, '/home')),
        '/home': (_) => HomeScreen(onToggleTheme: toggleTheme),
      },
    );
  }
}
