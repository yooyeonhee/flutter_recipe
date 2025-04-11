abstract interface class BookmarkRepository {
  Future<void> saveRecipe(int id);

  Future<void> unsaveRecipe(int id);

  Future<void> bookmarkToggle(int id);

  Future<List<int>> getBookmarkIds();

  Future<void> clear();
}
