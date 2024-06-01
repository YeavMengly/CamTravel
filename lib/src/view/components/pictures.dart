import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PicGrid extends StatelessWidget {
  const PicGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
        itemCount: 12, 
        crossAxisCount: 2,
        // gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
        mainAxisSpacing: 4,
        crossAxisSpacing: 8,
        physics: const ScrollPhysics(),
        itemBuilder: (context, index) => 
         Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
          child:ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset('./assets/image/preahvihear.png')
            )
          ), 
        
       
      
    );
  }
}
