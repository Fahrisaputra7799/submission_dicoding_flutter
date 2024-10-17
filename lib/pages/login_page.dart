import 'package:flutter/material.dart';
import 'package:proyek_akhir_dicoding/pages/home_page.dart';
import 'package:proyek_akhir_dicoding/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          // icon
          const Center(child: Icon(Icons.lock)),
          const SizedBox(
            height: 30,
          ),
          // text field
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('E-mail'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Password'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(child: ElevatedButton(onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => HomePage(),));
          }, child: Text('Masuk'))),
          const Spacer(),
          Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => RegisterPage(),));
                  }, child: Text('Belum Punya Akun! DAFTAR')))
        ],
      )),
    );
  }
}
