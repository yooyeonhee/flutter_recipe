import 'package:flutter/material.dart';
import 'package:recipe_flutter/ui/color_styles.dart';
import 'package:recipe_flutter/ui/text_styles.dart';

class Tabs extends StatelessWidget {
  final List<String> labels;
  final int selectedIndex;
  final double gap;
  final void Function(int index) onChangeTab;

  const Tabs({
    super.key,
    required this.labels,
    required this.selectedIndex,
    this.gap = 15.0,
    required this.onChangeTab,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        for (int i = 0; i < labels.length; i++) ...[
          Expanded(
            child: GestureDetector(
              onTap: () {
                onChangeTab(i);
              },
              child: _TabElement(
                text: labels[i],
                isSelected: i == selectedIndex,
              ),
            ),
          ),
          if (i != labels.length - 1) SizedBox(width: gap), // 마지막에는 gap 없음
        ]
      ],
    );
  }
}

class _TabElement extends StatelessWidget {
  final String text;
  final bool isSelected;

  const _TabElement({
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isSelected ? ColorStyles.primary100 : ColorStyles.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyles.smallTextBold.copyWith(
              color: isSelected ? ColorStyles.white : ColorStyles.primary100,
            ),
          ),
        ],
      ),
    );
  }
}
