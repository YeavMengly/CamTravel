import 'package:flutter/material.dart';
import 'package:cam_travel/src/model/function/fetch_product.dart';
import 'package:cam_travel/src/model/data/products.dart';

class PlaceScreen extends StatefulWidget {
  const PlaceScreen({super.key});

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  late Future<List<Products>> _productsFuture;

  @override
  void initState() {
    super.initState();
    _productsFuture = fetchProducts();
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 16, left: 16),
              child: Text(
                'Province/ City',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: Container(
                margin: const EdgeInsets.all(16),
                child: FutureBuilder<List<Products>>(
                  future: _productsFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return const Center(child: Text('No Products Available'));
                    } else {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          var product = snapshot.data![index];
                          return Container(
                            width: 130,
                            margin: const EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: const Color.fromRGBO(204, 220, 243, 100),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 120,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16)),
                                    image: DecorationImage(
                                      image: AssetImage('./assets/image/banner.png'),
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Text(
                                      product.getPlace,
                                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 0, left: 16),
              child: Text(
                'Popular Destination',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            FutureBuilder<List<Products>>(
              future: _productsFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text('No Products Available'));
                } else {
                  return Container(
                    padding: const EdgeInsets.only(top: 8),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        var product = snapshot.data![index];
                        return Center(
                          child: Container(
                            width: 280,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: const Color.fromRGBO(249, 245, 250, 100),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 120,
                                  width: 174,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    image: const DecorationImage(
                                      image: AssetImage('./assets/image/AngkorTemple.png'),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 8,
                                  left: 8,
                                  child: SizedBox(
                                    height: 60,
                                    width: 180,
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                product.getPlace,
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    product.getProvince,
                                                    style: const TextStyle(fontSize: 14),
                                                  ),
                                                ),
                                                const Image(
                                                  image: AssetImage('assets/image/favorite.png'),
                                                ),
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
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
