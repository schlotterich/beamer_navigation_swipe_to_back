import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              context.beamToNamed('settings/settings-sub');
            },
            child: Text("Settings Detail")),
      ),
    );
  }
}
