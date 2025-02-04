class CategoryModel {
  String id;
  String name;
  String path;

  CategoryModel({required this.id, required this.name, required this.path});

  static List<CategoryModel> getCategoriesList() {
    return [
      CategoryModel(
          id: 'general', name: 'General', path: 'assets/images/general.png'),
      CategoryModel(
          id: 'business', name: 'Business', path: 'assets/images/business.png'),
      CategoryModel(
          id: 'entertainment',
          name: 'Entertainment',
          path: 'assets/images/entertainment.png'),
      CategoryModel(
          id: 'health', name: 'Health', path: 'assets/images/health.png'),
      CategoryModel(
          id: 'science', name: 'Science', path: 'assets/images/science.png'),
      CategoryModel(
          id: 'technology',
          name: 'Technology',
          path: 'assets/images/technology.png'),
      CategoryModel(
          id: 'sports', name: 'Sports', path: 'assets/images/sports.png'),
    ];
  }
}
