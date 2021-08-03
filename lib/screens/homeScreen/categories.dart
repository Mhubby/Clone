import 'package:flutter/material.dart';

import '../../size_config.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = [
    "Living room",
    "Kitchen",
    "Dining",
    "Bathroom",
    "Toilet"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: getProportionateScreenHeight(60),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index, context),
        ));
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: index == selectedCategory
                        ? Colors.black
                        : Colors.black.withOpacity(0.4),
                  ),
            ),
            Container(
              height: getProportionateScreenHeight(4),
              width: getProportionateScreenWidth(25),
              decoration: BoxDecoration(
                color: index == selectedCategory
                    ? Colors.black
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
