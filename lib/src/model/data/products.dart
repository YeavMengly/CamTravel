// import 'dart:convert';

class Products {
  final int id;
  final String image;
  final String place;
  final String province;
  final String description;

  Products({
    required this.id,
    required this.image,
    required this.place,
    required this.province,
    required this.description,
  });

  int get getId => id;
  String get getImage => image;
  String get getPlace => place;
  String get getProvince => province;
  String get getDescription => description;

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      id: json["id"],
      image: json["image"],
      place: json["place"],
      province: json["province"],
      description: json["description"],
    );
  }
}


// List<Products> productFromJson(String str) => List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));
// String productToJson (List<Products> data) => json.encode(List<dynamic>.from(data.map((x) =>x.toString())));