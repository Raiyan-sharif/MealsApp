import 'package:flutter/material.dart';
import 'package:meal_app/categories_screen.dart';
import 'package:meal_app/main_drawer.dart';
import 'package:meal_app/models/meal.dart';

import 'favorite_screen.dart';

class TabScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;
  TabScreen(this.favoriteMeals);
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  void _selectPage(int index){
    setState(() {
      selectedPageIndex = index;
    });
  }
  late List<Map<String,Object>> _pages;

  int selectedPageIndex = 0;
  @override
  void initState() {
    _pages = [
      {'page': CategoriesScreen(), 'title':'Category'},
      {'page':FavoriteScreen(widget.favoriteMeals), 'title':'Your Favorite'},
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return DefaultTabController(
    //   length: 2,
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pages[selectedPageIndex]['title'] as String,
        ),
        // bottom: TabBar(tabs: [
        //   Tab(icon: Icon(Icons.category),text: 'Category',),
        //   Tab(icon: Icon(Icons.star),text: 'Favorites',),
        //
        // ],),
      ),
      drawer: MainDrawer(),
      body: _pages[selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        onTap: _selectPage,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
            ),

            title: Text(
              'Category',
            ),

          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
            ),
            title: Text(
              'Favorite',
            ),
          ),
        ],
      ),

      // TabBarView(
      //   children: [
      //     CategoriesScreen(
      //
      //     ),
      //     FavoriteScreen()
      //
      //   ],
      // ),
      // ),
    );
  }
}
