import 'package:cam_travel/src/model/data/products.dart';
import 'package:cam_travel/src/model/function/fetch_product.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var products = <Products>[].obs;  // Observable list of products
  var isLoading = false.obs;        // Observable loading state

  Future<List?> fetchProduct() async {
    isLoading(true);
    try {
      fetchProducts();
    } catch (e) {
      print('Error fetching products: $e');
    } finally {
      isLoading(false);
    }
    return null;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    fetchProducts();
    super.onInit();
  }
}
