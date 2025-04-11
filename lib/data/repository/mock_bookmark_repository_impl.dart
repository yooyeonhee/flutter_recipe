import 'package:recipe_flutter/domain/repository/bookmark_repository.dart';

class MockBookmarkRepositoryImpl implements BookmarkRepository {
  final _bookmarkIds = <int>{2, 4};
  @override
  Future<void> bookmarkToggle(int id) async {
    if (_bookmarkIds.contains(id)) {
      unsaveRecipe(id);
    }
    saveRecipe(id);
  }

  @override
  Future<void> clear() async {
    _bookmarkIds.clear();
  }

  @override
  Future<List<int>> getBookmarkIds() async {
    return _bookmarkIds.toList();
  }

  @override
  Future<void> saveRecipe(int id) async {
    _bookmarkIds.add(id);
  }

  @override
  Future<void> unsaveRecipe(int id) async {
    _bookmarkIds.remove(id);
  }
}
