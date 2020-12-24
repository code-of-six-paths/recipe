import 'package:flutter/material.dart';
import '../screens/meals_category_screen.dart';

//used as Category Screen in Gridview
class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  void selectCategory(BuildContext ctx) {
    //Using Navigator in this ftn on line 16
    //context has info about the position of rhe widget.
    Navigator.of(ctx).pushNamed(
      MealCategory.routeName,
      arguments: {'id': id, 'title': title},
    ); //Navigator gets connected with the context of the page::::::::PushNamed Takes the Path ,i.e /category-meals
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context), //for Navigating to another page
      splashColor: Theme.of(context).accentColor,
      //SplashColor appears onTappiing
      borderRadius: BorderRadius.circular(
          30), //same BorderRadius for InkWell and the Gradient Card
      child: Container(
        padding:
            const EdgeInsets.all(15), //const is used for a faster build here
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ), //title for various cards in the GridView
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color,
              color.withOpacity(0.7),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
