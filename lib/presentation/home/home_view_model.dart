import 'package:flutter/material.dart';
import 'package:recipe_flutter/presentation/home/home_state.dart';

class HomeViewModel with ChangeNotifier {
  HomeState _state = HomeState(categories: [
    'All',
    'Indian',
    'Italian',
    'Asian',
    'Chinese',
    'Chinese',
    'Chinese'
  ], selectedCategory: 'All');
  HomeState get state => _state;

  void onSelectCategory(String category) async {
    _state = state.copyWith(selectedCategory: category);
    notifyListeners();
  }
}
