// LOCATIONS
import 'package:beamer/beamer.dart';
import 'package:ecommerce_beamer_playground/ui/views/products_view.dart';
import 'package:ecommerce_beamer_playground/ui/views/settings_detail_view.dart';
import 'package:ecommerce_beamer_playground/ui/views/settings_view.dart';
import 'package:flutter/material.dart';

class ProductsLocation extends BeamLocation {
  @override
  List get pathBlueprints => ['/products/:products-sub'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      BeamPage(
          key: ValueKey('products'),
          child: ProductsView(),
          type: BeamPageType.fadeTransition,
          title: 'Products'),
      if (state.pathParameters.containsKey('products-sub'))
        BeamPage(
            key: ValueKey('products-sub'),
            child: SettingsDetailView(),
            type: BeamPageType.fadeTransition)
    ];
  }
}

class SettingsLocation extends BeamLocation {
  @override
  List get pathBlueprints => ['/settings/:settings-sub'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    print(state.pathParameters);
    return [
      BeamPage(
          key: ValueKey('settings'),
          child: SettingsView(),
          type: BeamPageType.fadeTransition,
          title: 'Settings'),
      if (state.pathParameters.containsKey('settings-sub'))
        BeamPage(
            key: ValueKey('settings-sub'),
            child: SettingsDetailView(),
            type: BeamPageType.fadeTransition)
    ];
  }
}
