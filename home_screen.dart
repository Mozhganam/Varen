import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback onToggleTheme;
  const HomeScreen({required this.onToggleTheme, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('وارِن | آگهی‌ها'),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: onToggleTheme,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Card(
          margin: EdgeInsets.all(12),
          child: ListTile(
            leading: Icon(Icons.home),
            title: Text('ملک شماره ${index + 1}'),
            subtitle: Text('آدرس نمونه در بابل'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
