import 'package:flutter/material.dart';
import 'category_item.dart';
import '../Data/sample_data.dart';

class GridViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 2.3,
        crossAxisSpacing: 30,
        mainAxisSpacing: 40,
      ),

      children: DUMMY_CATEGORIES
          .map((categoryData) => CategoryItem(
                categoryData.id,
                categoryData.title,
                categoryData.color,
              ))
          .toList(), //Need the items of category.dart in this gridView, so we map the dummycategory to a list that returns a Category Item and a Category Color.
    );
  }
}
