class Product {
  String? id;
  String title;
  String description;
  String category;
  String nameImage;
  String pathImage;
  String rate;
  int price;

  Product({
    this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.nameImage,
    required this.pathImage,
    required this.price,
    required this.rate,
  });
}
