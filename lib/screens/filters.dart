import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = '/Filters';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text('Hi Filters'),
      ),
    );
  }
}
