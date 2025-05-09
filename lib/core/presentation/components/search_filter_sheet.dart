import 'package:flutter/material.dart';
import 'package:recipe_flutter/core/presentation/components/filter_buttons.dart';
import 'package:recipe_flutter/core/presentation/components/rating_button.dart';
import 'package:recipe_flutter/core/presentation/components/small_button.dart';
import 'package:recipe_flutter/domain/filter/filter_state.dart';
import 'package:recipe_flutter/ui/text_styles.dart';

class SearchFilterSheet extends StatefulWidget {
  final FilterState state;
  final void Function(FilterState) onChangeFilter;

  const SearchFilterSheet({
    super.key,
    required this.state,
    required this.onChangeFilter,
  });

  @override
  State<SearchFilterSheet> createState() => _SearchFilterSheetState();
}

class _SearchFilterSheetState extends State<SearchFilterSheet> {
  late FilterState _state;

  @override
  void initState() {
    super.initState();

    _state = widget.state;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
            selectedItem: _state.time,
            onSelected: (String item) {
              setState(() {
                _state = _state.copyWith(time: item);
              });
            },
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
          Wrap(
              children: {1, 2, 3, 4, 5}.expand((el) {
            return [
              GestureDetector(
                  onTap: () => {
                        setState(() {
                          _state = _state.copyWith(rate: el);
                        })
                      },
                  child: RatingButton(
                    '$el',
                    isSelected: el == _state.rate,
                  )),
              const SizedBox(
                width: 10,
              )
            ];
          }).toList()),
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
            selectedItem: _state.category,
            onSelected: (String item) {
              setState(() {
                _state = _state.copyWith(category: item);
              });
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              width: 174,
              child: SmallButton('Filter', onPressed: () {
                widget.onChangeFilter(_state);
              }),
            ),
          ),
          const SizedBox(
            height: 22,
          ),
        ],
      ),
    );
  }
}
