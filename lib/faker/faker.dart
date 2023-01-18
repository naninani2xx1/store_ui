final List<String> listCategory = ["All", "Men", "Woman", "Kids", "Other"];

/// Creating a list of ProductFaker objects.
final List<ProductFaker> listProduct = [
  ProductFaker(
      name: "Tagerine Shirt",
      price: "\$240.32",
      image: "assets/faker/shirt-1.png"),
  ProductFaker(
      name: "Leather Coart",
      price: "\$325.36",
      image: "assets/faker/shirt-2.png"),
  ProductFaker(
      name: "Tagerine Shirt",
      price: "\$126.47",
      image: "assets/faker/shirt-3.png"),
  ProductFaker(
      name: "Tagerine Shirt",
      price: "\$257.85",
      image: "assets/faker/shirt-4.png"),
];

/// The ProductFaker class is a Dart class that contains three properties: name, price, and image
class ProductFaker {
  final String name;
  final String price;
  final String image;

  ProductFaker({
    required this.name,
    required this.price,
    required this.image,
  });
}
