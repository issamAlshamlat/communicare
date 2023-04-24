class SubcategoryModel {
  String title;
  int categoryId;

  SubcategoryModel({required this.title, required this.categoryId});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'categoryId': categoryId,
    };
  }

  factory SubcategoryModel.fromMap(Map<String, dynamic> map) {
    return SubcategoryModel(
      title: map['title'],
      categoryId: map['categoryId'],
    );
  }
}
