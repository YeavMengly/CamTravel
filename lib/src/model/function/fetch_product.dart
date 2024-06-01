import 'dart:convert';
import 'package:cam_travel/src/model/api/config.dart';
import 'package:cam_travel/src/model/data/products.dart';
import 'package:http/http.dart' as http;

// Future<List<Products>> fetchProducts() async {
//   try {
//     final response = await http.get(
//       Uri.parse(urlData),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//     );
//     final data = jsonDecode(response.body);
//     print("data: $data\n");
//     return data.map<Products>((e) => Products.fromJson(e)).toList();
//   } catch (e) {
//     print("e: $e");
//     rethrow;
//   }
// }
Future<List<Products>> fetchProducts() async {
  try {
    final response = await http.get(
      Uri.parse(urlData),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
       return data.map<Products>((e) => Products.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  } catch (e) {
    print("Error: $e");
    rethrow;
  }
}

//Check Prodcuts Response
void main() async {
  try {
    List products = await fetchProducts();
    for (var product in products) {
      print('Product: ${product.getPlace}, ${product.getProvince}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
