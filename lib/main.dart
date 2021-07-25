import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  ThemeMode myTheme = ThemeMode.light;
  ThemeData myThemeData = ThemeData(brightness: Brightness.dark);
  bool darkTheme = false;
  bool value = false;

  void onChanged(bool switched) {
    setState(() {
      value = !value;
      darkTheme = !darkTheme;
    });
    if (darkTheme) {
      myTheme = ThemeMode.dark;
    } else {
      myTheme = ThemeMode.light;
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My app"),
          actions: [Switch(value: value, onChanged: onChanged)],
        ),
      ),
      themeMode: myTheme,
      darkTheme: myThemeData,
    );
  }
}
