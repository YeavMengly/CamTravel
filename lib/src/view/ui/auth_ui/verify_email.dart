import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key, this.title});

   final String? title;

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {

  OtpFieldController otpController = OtpFieldController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        title: const Text('Verify Email'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 320,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('./assets/image/enter_otp.png'))
              ),
            ),
            Positioned(child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: const Text('We’ve sent a verification 6 digits code to your email address. Please enter the code to complete the email verification process.', 
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, ),),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16,left: 16, right: 16,bottom: 8),
                child: Container(
                  alignment: Alignment.center,
                  child: OTPTextField(
                    controller: otpController,
                    length: 5,
                    width: MediaQuery.of(context).size.width,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldWidth: 45,
                    fieldStyle: FieldStyle.box,
                    outlineBorderRadius: 15,
                    style: const TextStyle(fontSize: 17),
                    onChanged: (pin) {
                      print("Changed: " + pin);
                    },
                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    }),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 16),
              child: GestureDetector(child: Text('Resend Code OTP', style: TextStyle(
                fontSize: 15
              ),),),),
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
                  child: const Text('Verify', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.white),),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}