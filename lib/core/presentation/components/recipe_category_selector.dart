import 'package:flutter/material.dart';
import 'package:recipe_flutter/core/presentation/components/tabs.dart';

class RecipeCategorySelector extends StatelessWidget {
  final List<String> categories;
  final String selectedCategory;
  final void Function(String category) onSelectedCategory;

  const RecipeCategorySelector({
    super.key,
    required this.categories,
    required this.onSelectedCategory,
    required this.selectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Tabs(
      labels: categories,
      selectedTab: 'All',
      onChangeTab: (String tab) {},
    );
  }
}
