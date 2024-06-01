import 'package:cam_travel/src/view/ui/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:cam_travel/src/model/function/fetch_product.dart';
import 'package:cam_travel/src/model/data/products.dart';
import 'package:cam_travel/src/view/ui/search_screen.dart';
import 'package:cam_travel/src/view/details/show_detail_info.dart'; // Import the ShowDetailInfo widget

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromRGBO(91, 123, 182, 100),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton.outlined(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NotificationScreen();
                  },));
                }, icon: const Icon(Icons.notifications)),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(
                      height: 116,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(91, 123, 182, 100),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                        image: DecorationImage(
                          image: AssetImage('./assets/image/NicePng.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hello Mengly",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                Text(
                                  "Where are you now..?",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 68, left: 16, right: 16),
                            child: Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Color.fromRGBO(
                                              245, 246, 251, 100)),
                                    ],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SearchScreen(),
                                        ),
                                      );
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Search"),
                                          Icon(Icons.search),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 116, right: 16, left: 16),
                          child: Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              image: DecorationImage(
                                image: AssetImage('./assets/image/banner.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 16, left: 16),
                          child: Text(
                            "Best Places",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: FutureBuilder<List<Products>>(
                            future: _productsFuture,
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                    child: CircularProgressIndicator());
                              } else if (snapshot.hasError) {
                                return Center(
                                    child: Text('Error: ${snapshot.error}'));
                              } else if (!snapshot.hasData ||
                                  snapshot.data!.isEmpty) {
                                return const Center(
                                    child: Text('No Products Available'));
                              } else {
                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const SizedBox(width: 16),
                                      ...snapshot.data!.map((product) {
                                        return Padding(
                                          padding:
                                              const EdgeInsets.only(right: 16),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ShowDetailInfo(
                                                          product: product),
                                                ),
                                              );
                                            },
                                            child: Container(
                                              height: 160,
                                              width: 250,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.grey,
                                              ),
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    height: 160,
                                                    width: 250,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  8)),
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            './assets/image/AngkorTemple.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 92,
                                                    right: 8,
                                                    left: 8,
                                                    child: Container(
                                                      height: 60,
                                                      width: 180,
                                                      decoration: BoxDecoration(
                                                        color: const Color
                                                            .fromRGBO(
                                                            245, 246, 251, 25),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(4.0),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 8),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  product.place,
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          16),
                                                                ),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  const Image(
                                                                    image: AssetImage(
                                                                        'assets/image/place.png'),
                                                                  ),
                                                                  Expanded(
                                                                    child: Text(
                                                                      product
                                                                          .province,
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              14),
                                                                    ),
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
                                          ),
                                        );
                                      }).toList(),
                                      const SizedBox(width: 16),
                                    ],
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 16, left: 16),
                          child: Text(
                            "Attractions",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                        FutureBuilder<List<Products>>(
                          future: _productsFuture,
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            } else if (snapshot.hasError) {
                              return Center(
                                  child: Text('Error: ${snapshot.error}'));
                            } else if (!snapshot.hasData ||
                                snapshot.data!.isEmpty) {
                              return const Center(
                                  child: Text('No Products Available'));
                            } else {
                              return Container(
                                padding: const EdgeInsets.all(16),
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                                child: GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: snapshot.data!.length,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 8.0,
                                    mainAxisSpacing: 8.0,
                                  ),
                                  itemBuilder: (context, index) {
                                    var product = snapshot.data![index];
                                    return Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ShowDetailInfo(
                                                      product: product),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: 280,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            color: const Color.fromRGBO(
                                                249, 245, 250, 100),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 120,
                                                width: 174,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        './assets/image/AngkorTemple.png'),
                                                    fit: BoxFit.cover,
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
                                                    padding:
                                                        const EdgeInsets.all(
                                                            4.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              product.place,
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  product
                                                                      .province,
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          14),
                                                                ),
                                                              ),
                                                              const Image(
                                                                image: AssetImage(
                                                                    'assets/image/favorite.png'),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
