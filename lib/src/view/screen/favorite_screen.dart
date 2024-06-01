import 'package:flutter/material.dart';
import 'package:cam_travel/src/model/function/fetch_product.dart';
import 'package:cam_travel/src/model/data/products.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  late Future<List<Products>> _favoriteProductsFuture;

  @override
  void initState() {
    super.initState();
    _favoriteProductsFuture = fetchProducts(); // Assuming fetchProducts fetches favorite products
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cam Travel',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(91, 123, 182, 100),
      ),
      body: FutureBuilder<List<Products>>(
        future: _favoriteProductsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No Favorite Products Available'));
          } else {
            return ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var product = snapshot.data![index];
                return Center(
                  child: Container(
                    margin: const EdgeInsets.all(4),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: const Border(bottom: BorderSide(color: Colors.black)),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(21, 235, 235, 241),
                          offset: Offset(0, 2),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: const DecorationImage(
                              // image: NetworkImage(product.image), // Use product image URL
                              image: AssetImage('./assets/image/AngkorTemple.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 8,
                          left: 8,
                          child: SizedBox(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        product.place, // Use product place
                                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            product.province, // Use product province
                                            style: const TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        const Image(image: AssetImage('assets/image/favorite.png')), // Placeholder for favorite icon
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
