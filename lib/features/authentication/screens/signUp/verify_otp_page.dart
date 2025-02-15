import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:tripto/features/authentication/onboarding/onboarding.dart';

class VerifyOtpPage extends StatefulWidget {
  const VerifyOtpPage({super.key});

  @override
  State<VerifyOtpPage> createState() => _VerifyOtpPageState();
}

class _VerifyOtpPageState extends State<VerifyOtpPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController pinputController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              SizedBox(height: 40,),
              Text(
                'Verify your number',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8),
                child: Text(
                  'Please enter the verification code we sent to your mobile number.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),SizedBox(height: 40,),
              Pinput(
                controller: pinputController,
                mainAxisAlignment: MainAxisAlignment.center,
                length: 6,
                defaultPinTheme: PinTheme(
                width: 50,
                  height: 50,
                  textStyle:TextStyle(fontSize: 20,color: Colors.black),
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:Border.all(color: Colors.black,width: 2)
                  )
                ),
              ),
              SizedBox(height: 20,),
            ElevatedButton(style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 45,vertical: 14),
              foregroundColor: Colors.white,
              backgroundColor: Colors.lightBlueAccent
            ),
                onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Onboarding(),));
            }, child: Text('Verify OTP')),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn`t receive an OTP ? "),
                  Text("Resend OTP",style: TextStyle(color: Colors.black,fontSize: 14),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
