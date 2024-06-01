import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 16,left: 16, right: 16,bottom: 8),
            child: Container(
              alignment: Alignment.center,
              height: 60,
                decoration:  BoxDecoration(
                  color: const Color.fromARGB(235, 246, 246, 247),
                  boxShadow: const [
                    BoxShadow( offset: Offset(0, 2),
                    color: Color.fromARGB(255, 158, 214, 240))
                  ],
                  borderRadius: BorderRadius.circular(16)
                  
                ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(style: BorderStyle.solid, color: Colors.white)
                    
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(16)
                  ),
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search Items'
                ),
              )
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemBuilder: (context, index) => 
              GestureDetector(
                onTap: () {
                  // print('HI');
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 0.0),
                  alignment: Alignment.centerLeft,
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color:Color.fromARGB(255, 255, 255, 255),
                    
                  ),
                  
                  child: const Text('Search Items'),
                ),
              )
              ),
          ),
            )
        ],),
      ),
      );
  }
}