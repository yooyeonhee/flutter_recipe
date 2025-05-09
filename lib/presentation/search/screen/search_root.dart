import 'package:flutter/material.dart';
import 'package:recipe_flutter/core/di/di_setup.dart';
import 'package:recipe_flutter/core/presentation/components/search_filter_sheet.dart';
import 'package:recipe_flutter/domain/filter/filter_state.dart';
import 'package:recipe_flutter/presentation/search/screen/search_screen.dart';
import 'package:recipe_flutter/presentation/search/search_view_model.dart';

class SearchRoot extends StatelessWidget {
  const SearchRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<SearchViewModel>();

    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, widget) {
        return SearchScreen(
          state: viewModel.state,
          onChanged: (query) {
            viewModel.searchRecipes(query);
          },
          onTapFilter: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return SearchFilterSheet(
                  state: viewModel.state.filterState,
                  onChangeFilter: (FilterState state) {
                    viewModel.onChangeFilter(state);
                    Navigator.pop(context);
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
