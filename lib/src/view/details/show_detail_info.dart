import 'package:flutter/material.dart';
import 'package:cam_travel/src/view/components/nearby.dart';
import 'package:cam_travel/src/view/components/pictures.dart';
import 'package:cam_travel/src/view/details/recipe_detail_appbar.dart';
import 'package:cam_travel/src/model/data/products.dart';

class ShowDetailInfo extends StatefulWidget {
  final Products product;

  const ShowDetailInfo({super.key, required this.product});

  @override
  State<ShowDetailInfo> createState() => _ShowDetailInfoState();
}

class _ShowDetailInfoState extends State<ShowDetailInfo> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const RecipeDetailAppBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTextStyle(
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.product.place,
                              style: const TextStyle(
                                color: Colors.black87,
                                decoration: TextDecoration.none,
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(Icons.place, size: 14),
                                Text(
                                  widget.product.province,
                                  style: const TextStyle(
                                    color: Colors.black54,
                                    decoration: TextDecoration.none,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Icon(Icons.favorite_border)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                          elevation: 4.0,
                          shadowColor: Colors.grey.withOpacity(0.5),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32.0),
                              gradient: LinearGradient(
                                colors: [Colors.orange.shade200, Colors.orange.shade600],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: TabBar(
                              indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(32.0),
                                color: Colors.orange.shade400,
                              ),
                              tabs: [
                                Tab(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width * 0.21,
                                    child: const Text(
                                      'Detail',
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width * 0.21,
                                    child: const Text(
                                      'Picture',
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width * 0.21,
                                    child: const Text(
                                      'Nearby',
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                                    ),
                                  ),
                                ),
                              ],
                              controller: tabController,
                              isScrollable: false,
                              physics: const NeverScrollableScrollPhysics(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.6, // Adjust height to fit content better
                          width: MediaQuery.of(context).size.width,
                          child: TabBarView(
                            controller: tabController,
                            children: [
                              SingleChildScrollView(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  widget.product.description,
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                              const PicGrid(),
                              GestureDetector(
                                onTap: () {},
                                child: const NearBy(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
