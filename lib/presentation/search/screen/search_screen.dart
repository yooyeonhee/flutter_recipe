import 'package:flutter/material.dart';
import 'package:recipe_flutter/core/presentation/components/recipe_grid_item.dart';
import 'package:recipe_flutter/core/presentation/components/search_input_field.dart';
import 'package:recipe_flutter/presentation/search/search_state.dart';
import 'package:recipe_flutter/ui/color_styles.dart';
import 'package:recipe_flutter/ui/text_styles.dart';

class SearchScreen extends StatelessWidget {
  final SearchState state;
  final void Function(String query)? onChanged;

  const SearchScreen({
    super.key,
    required this.state,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search recipes",
          style: TextStyles.mediumTextBold,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 17,
            ),
            Row(
              children: [
                Expanded(
                  child: SearchInputField(
                    placeholder: 'Search recipe',
                    // 실시간 검색이 아닌 사용자의 confirm 여부에 따라 검색하는 경우 controller를 이용해 연결해야한다.
                    onChanged: onChanged, // 실시간 input 변경에 따라 검색
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorStyles.primary100,
                  ),
                  child: const Icon(Icons.tune, color: ColorStyles.white),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  state.searchTitle,
                  style: TextStyles.normalTextBold,
                ),
                const Spacer(),
                Text(
                  state.resultCount,
                  style: TextStyles.smallerTextRegular
                      .copyWith(color: ColorStyles.gray3),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                      ),
                      itemCount: state.recipes.length,
                      itemBuilder: (context, index) {
                        final recipe = state.recipes[index];
                        return RecipeGridItem(recipe: recipe);
                      }),
            )
          ],
        ),
      ),
    );
  }
}
