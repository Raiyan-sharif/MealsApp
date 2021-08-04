import 'package:flutter/material.dart';
import 'package:meal_app/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = '/filter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text(
          'Filter Page',
        ),
      ),
    );
  }
}
