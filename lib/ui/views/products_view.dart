import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

class ProductsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Products View"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                context.beamToNamed('products/products-sub');
              },
              child: Text("Detail Page")),
        ));
  }
}
