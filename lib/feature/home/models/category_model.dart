class CategoryModel {
  String title;
  // final List<SubcategoryModel> subcategories;

  CategoryModel({required this.title});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
    };
  }

  static CategoryModel fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      title: map['title'],
    );
  }
}
