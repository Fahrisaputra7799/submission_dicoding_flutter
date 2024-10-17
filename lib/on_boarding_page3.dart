import 'package:flutter/material.dart';
import 'package:proyek_akhir_dicoding/pages/login_page.dart';

class OnBoardingPage3 extends StatelessWidget {
  const OnBoardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          // image
          Image.asset('images/run_image3.png'),
          const SizedBox(
            height: 20,
          ),
          // description
          const Padding(
            padding: EdgeInsets.symmetric(horizontal:20),
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim .',
            textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // slogan
          Text('Ayo Lari Biar Ngak Gendut',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17
          ),
          ),
          const Spacer(),
          // Button
          ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => LoginPage(),));
          }, child: Text('Continue')),
          const SizedBox(
            height: 25,
          )
        ],
      )),
    );
  }
}
