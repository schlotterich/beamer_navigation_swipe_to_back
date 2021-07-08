import 'package:beamer/beamer.dart';
import 'package:ecommerce_beamer_playground/ui/widgets/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'beam_locations.dart';

Future<void> main() async {
  runApp(
    App(),
  );
}

class App extends StatelessWidget {
  final routerDelegate = BeamerDelegate(
    initialPath: '/home',
    locationBuilder: SimpleLocationBuilder(routes: {
      '*': (context, state) {
        final beamerKey = GlobalKey<BeamerState>();
        return Scaffold(
          body: Beamer(
            key: beamerKey,
            routerDelegate: BeamerDelegate(
              locationBuilder: BeamerLocationBuilder(
                beamLocations: [ProductsLocation(), SettingsLocation()],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBarWidget(
            beamerKey: beamerKey,
          ),
        );
      },
    }),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher: BeamerBackButtonDispatcher(
        delegate: routerDelegate,
      ),
    );
  }
}
