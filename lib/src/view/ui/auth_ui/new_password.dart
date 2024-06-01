import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar:AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        title: Text('Forget Password'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 320,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('./assets/image/reset_password.png'))
              ),
            ),
            Positioned(child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: const Text('Please create a new password for account. Your password must be different from your previous one.', 
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, ),),
            ),
            ),
             Padding(padding: const EdgeInsets.only(top: 8,left: 16, right: 16, bottom: 8),
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
                      prefixIcon: const Icon(Icons.lock),
                      labelText: 'New Password',
                      suffixIcon: IconButton(onPressed: () {
                        
                      }, icon: Icon(Icons.remove_red_eye))
                    ),
                  )
                )
              ),
              Padding(padding: const EdgeInsets.only(top: 8,left: 16, right: 16, bottom: 8),
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
                      prefixIcon: const Icon(Icons.lock),
                      labelText: 'Confirm Password',
                      suffixIcon: IconButton(onPressed: () {
                        
                      }, icon: Icon(Icons.remove_red_eye))
                    ),
                  )
                )
              ),
              Padding(padding: EdgeInsets.all(16.0) ,child: GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  height: 60,width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: const Color.fromRGBO(90, 123, 181, 25),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(178, 199, 238, 0.612),
                        offset: Offset(0, 3)
                      )
                    ]
                  ),
                  child: const Text('Change Password', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.white),),
                ),
              ),
            ),
          ],
        ),
      ),
      );
  }
}