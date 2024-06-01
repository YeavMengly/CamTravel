import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
                backgroundColor: const Color.fromRGBO(91, 123, 182, 50),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 16,),
          child: Text('Today', style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w400
          ),),),
          Padding(padding: const EdgeInsets.all(16),
          child: Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color.fromRGBO(249, 245, 250, 20),
               boxShadow: const [
                    BoxShadow(offset:  Offset(0, 0.5),
                    blurRadius: 2 ),
                    
                  ]
            ),
           child: Row(
            children: [
              Padding(padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(image: AssetImage('./assets/image/banner.png'), alignment: Alignment.center,fit: BoxFit.cover),
                  ),
                ),
              ),
              const Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('ភ្នំបូកគោ', style: TextStyle(fontSize: 18),), 
                    Text('dd/mm/yyyy', style: TextStyle(fontSize: 16),), 
                    Text('ខេត្ត កំពត', style: TextStyle(fontSize: 18),)
                  ],
                )
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                height: 120,
                width: 40,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16),
                  ),
                  color: Color.fromRGBO(204, 220, 242, 25),
                ),

                child: const Icon(Icons.arrow_right),
              )
              )
            ],
           ),
          ),)
        ],),
      ),
    );
  }
}