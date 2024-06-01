import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RecipeDetailAppBar extends StatelessWidget {
  const RecipeDetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leadingWidth: 80.0,
      leading: Container(
        margin: const EdgeInsets.only(left: 24.0),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context); // Add back button functionality
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
      expandedHeight: 260,
      elevation: 0.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          './assets/image/preahvihear.png',
          fit: BoxFit.cover,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: Container(
          alignment: Alignment.center,
          height: 32.0,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
            color: Colors.white,
          ),
          child: Container(
            height: 5.0,
            width: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}