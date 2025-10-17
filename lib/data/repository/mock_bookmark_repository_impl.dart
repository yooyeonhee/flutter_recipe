import 'dart:async';

import 'package:recipe_flutter/domain/repository/bookmark_repository.dart';
import 'package:rxdart/subjects.dart';

class MockBookmarkRepositoryImpl implements BookmarkRepository {
  final _bookmarkIds = <int>{2, 3, 6};
  final _controller = BehaviorSubject<Set<int>>();

  MockBookmarkRepositoryImpl() {
    _controller.add(_bookmarkIds);
  }

  @override
  Future<void> bookmarkToggle(int id) async {
    if (_bookmarkIds.contains(id)) {
      unsaveRecipe(id);
    } else {
      saveRecipe(id);
    }
    _controller.add(_bookmarkIds);
  }

  @override
  Future<void> clear() async {
    _bookmarkIds.clear();
    _controller.add(_bookmarkIds);
  }

  @override
  Future<List<int>> getBookmarkIds() async {
    return _bookmarkIds.toList();
  }

  @override
  Future<void> saveRecipe(int id) async {
    _bookmarkIds.add(id);
    _controller.add(_bookmarkIds);
  }

  @override
  Future<void> unsaveRecipe(int id) async {
    _bookmarkIds.remove(id);
    _controller.add(_bookmarkIds);
  }

  @override
  Stream<Set<int>> bookmarkIdsStream() {
    return _controller.stream;
  }
}
