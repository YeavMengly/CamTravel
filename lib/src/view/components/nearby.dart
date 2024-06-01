import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NearBy extends StatefulWidget {
  const NearBy({super.key});

  @override
  State<NearBy> createState() => _NearByState();
}

class _NearByState extends State<NearBy> {
  @override
  Widget build(BuildContext context) {
    return Center(child: ListView.builder(itemBuilder: (context, index) {
      return Card(

        elevation: 2.0,
        child: Container(
          
          height: 100,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16
            )
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
                  child: Container(
                                
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(image: AssetImage('./assets/image/preahvihear.png'), fit: BoxFit.contain,alignment: Alignment.center,
                    )
                  ),
                                ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ប្រាសាបាយ័ន', style: TextStyle(
                    fontSize: 15, color: Colors.black87, fontWeight: FontWeight.w500
                  ),),
                  Text('ខេត្ត សៀមរាប')
                ],
              ))
            ],
          ),
        ) ,
      );
    },),);
  }
}