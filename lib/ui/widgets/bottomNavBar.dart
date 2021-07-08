// APP
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  BottomNavigationBarWidget({required this.beamerKey});

  final GlobalKey<BeamerState> beamerKey;

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  late BeamerDelegate _beamerDelegate;
  int _currentIndex = 0;

  void _setStateListener() => setState(() {});

  @override
  void initState() {
    super.initState();
    _beamerDelegate = widget.beamerKey.currentState!.routerDelegate;
    _beamerDelegate.addListener(_setStateListener);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      iconSize: 32.0,
      items: [
        BottomNavigationBarItem(
            label: 'Products', icon: Icon(Icons.home_outlined)),
        BottomNavigationBarItem(
            label: 'Categories', icon: Icon(Icons.category_outlined)),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        _beamerDelegate.beamToNamed(_routes[index]);
      },
    );
  }

  List<String> _routes = ['products', 'settings'];

  @override
  void dispose() {
    _beamerDelegate.removeListener(_setStateListener);
    super.dispose();
  }
}
