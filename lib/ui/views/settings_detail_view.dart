import 'package:flutter/material.dart';

class SettingsDetailView extends StatelessWidget {
  const SettingsDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings Sub"),
      ),
      body: Container(
        child: Center(child: Text("Settings Detail")),
      ),
    );
  }
}
