import 'package:flutter/material.dart';
import 'package:proyek_akhir_dicoding/pages/home_page.dart';

class ChatUserPage extends StatelessWidget {
  const ChatUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Message',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:15),
            child: Icon(Icons.menu, color: Colors.white,),
          )
        ],
        leading: IconButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => HomePage(),));
        }, icon:Icon(Icons.arrow_back,color: Colors.white)),
      ),
      body: SafeArea(child: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/run_image2.png'),
              ),
              title: Text('Fahri saputra'),
              subtitle: Text('Gimana Sepatunya Udh Sampe?'),
            ),
          );
        },
      ),),
    );
  }
}