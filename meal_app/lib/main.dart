import 'package:flutter/material.dart';
import 'package:meal_app/categories_screen.dart';
import 'package:meal_app/category_item.dart';
import 'package:meal_app/category_meals_screens.dart';
import 'package:meal_app/filter_screen.dart';
import 'package:meal_app/meal_detail_screen.dart';
import 'package:meal_app/tabs_screen.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              caption: TextStyle(
                fontSize: 20.0,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      initialRoute: '/',
      // home: TabScreen(),
      routes: {
        '/': (ctx) => TabScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailsScreen.routeName: (ctx) => MealDetailsScreen(),
        FilterScreen.routeName: (ctx) => FilterScreen(),

      },
      onGenerateRoute: (settings){
        print(settings.arguments);
        return MaterialPageRoute(builder: (ctx)=> CategoryMealsScreen());
      },
      // onUnknownRoute: ,
    );
  }
}
