import 'package:flutter/material.dart';
import 'package:recipe_flutter/core/presentation/components/filter_buttons.dart';
import 'package:recipe_flutter/ui/color_styles.dart';
import 'package:recipe_flutter/ui/text_styles.dart';

class SearchFilterSheet extends StatelessWidget {
  const SearchFilterSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                'Filter Search',
                style: TextStyles.smallTextBold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Time',
              style: TextStyles.smallTextBold,
            ),
            const SizedBox(
              height: 10,
            ),
            FilterButtons(
              items: const ['All', 'Newest', 'Oldest', 'Popularity'],
              selectedItem: 'Newest',
              onSelected: (String item) {},
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Rate',
              style: TextStyles.smallTextBold,
            ),
            const SizedBox(
              height: 10,
            ),
            FilterButtons(
              items: const ['All', 'Newest', 'Oldest', 'Popularity'],
              selectedItem: 'Newest',
              onSelected: (String item) {},
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Category',
              style: TextStyles.smallTextBold,
            ),
            const SizedBox(
              height: 10,
            ),
            FilterButtons(
              items: const [
                'All',
                'Cereal',
                'Vegetables',
                'Dinner',
                'Chinese',
                'Local Dish',
                'Fruit',
                'BreadFast',
                'Spanish',
                'Lunch',
              ],
              selectedItem: 'Fruit',
              onSelected: (String item) {},
            ),
          ],
        ),
      ),
    );
  }
}
