class Product {
  String? id;
  String title;
  String description;
  String category;
  String image;
  String rate;
  int price;

  Product({
    this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.image,
    required this.price,
    required this.rate,
  });
}
