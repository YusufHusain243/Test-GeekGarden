class Product {
  String? id;
  String title;
  String description;
  String category;
  String nameImage;
  String pathImage;
  String rate;
  String price;

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

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      category: json['category'],
      image: json['image'],
      rate: json['rating']['rate'],
    );
  }
}
