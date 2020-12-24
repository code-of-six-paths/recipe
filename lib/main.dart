import 'dart:ui';

import 'package:flutter/material.dart';
import './screens/tabs_screen.dart';
import './screens/meal_info_screen.dart';
import 'screens/meals_category_screen.dart';
import 'screens/category_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meals App',
      // home: CategoryScreen(), //The Category Screen is the home now
      theme: ThemeData(
        primarySwatch: Colors.lime,
        accentColor: Colors.pink[200],
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'KaushanScript',
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(86, 25, 45, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(86, 25, 45, 1),
              ),
              title: TextStyle(fontFamily: 'DancingScript'),
            ),
      ),
      initialRoute: '/', //"/" is the route for home
      routes: {
        //Routes Table
        '/': (ctx) => TabsScreen(),
        MealCategory.routeName: (ctx) => MealCategory(),
        MealInfo.routeName: (ctx) => MealInfo(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoryScreen(),
        );
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoryScreen(),
        );
      },
    );
  }
}
