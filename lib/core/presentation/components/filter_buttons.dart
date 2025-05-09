import 'package:flutter/material.dart';
import 'package:recipe_flutter/core/presentation/components/filter_button.dart';

class FilterButtons extends StatelessWidget {
  final List<String> items;
  final String selectedItem;
  final void Function(String item) onSelected;

  const FilterButtons({
    super.key,
    required this.items,
    required this.selectedItem,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: items.expand((el) {
      return [
        GestureDetector(
          onTap: () => onSelected(el),
          child: FilterButton(
            el,
            isSelected: el == selectedItem,
          ),
        ),
        const SizedBox(
          width: 10,
        )
      ];
    }).toList());
  }
}
