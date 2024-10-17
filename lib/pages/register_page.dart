import 'package:flutter/material.dart';
import 'package:proyek_akhir_dicoding/pages/home_page.dart';
import 'package:proyek_akhir_dicoding/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('E-mail'),
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Password'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Konfirmasi Password'),
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
          }, child: const Text('Daftar'))),
          const Spacer(),
          Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => LoginPage(),));
                  }, child: const Text('Sudah Punya Akun! MASUK')))
        ],
      )),
    );
  }
}
