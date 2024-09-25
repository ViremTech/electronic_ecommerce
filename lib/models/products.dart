class Product {
  final backColor;
  final String imagePath;
  final String price;
  final String productName;
  final double rating;
  final String? description;

  const Product({
    required this.backColor,
    required this.imagePath,
    required this.price,
    required this.productName,
    required this.rating,
    this.description,
  });
}
