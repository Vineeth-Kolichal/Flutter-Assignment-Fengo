class Products {
  final List<ProductModel> products;

  Products({required this.products});
  factory Products.fromJson(Map<String, dynamic> json) {
    List<ProductModel> products = <ProductModel>[];
    json['Products'].forEach((v) {
      products.add(ProductModel.fromJson(v));
    });
    return Products(products: products);
  }
}

class ProductModel {
  final int id;
  final String productName;
  final String quanity;
  final List<String> images;
  final double price;

  ProductModel( 
      {required this.id,
      required this.productName,
     required this.quanity,
      required this.images,
      required this.price});
  static ProductModel fromJson(Map<String, dynamic> json) {
    return ProductModel(
        id: json['id'],
        productName: json['product_name'],
        quanity: json['quanity'],
      
        images: json['images'],
        price: json['price']);
  }
}
