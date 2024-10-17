import 'package:flutter/material.dart';
import 'package:proyek_akhir_dicoding/pages/chat_user_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(  // Membungkus seluruh body dengan scroll
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Welcome User',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage('images/run_image1.png'),
                        backgroundColor: Colors.black54,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search here...',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    CategoryCard(label: 'Running'),
                    SizedBox(width: 5),
                    CategoryCard(label: 'Casual'),
                    SizedBox(width: 5),
                    CategoryCard(label: 'Shoes Boots'),
                    SizedBox(width: 5),
                    CategoryCard(label: 'Slippers'),
                  ],
                ),
                const SizedBox(height: 20),
                // Gunakan Expanded agar GridView tidak meluap
                GridView.builder(
                  shrinkWrap: true,  // Pastikan grid tidak meluap
                  physics: NeverScrollableScrollPhysics(),  // Nonaktifkan scroll internal
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,  // 2 kolom dalam grid
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: 6, // jumlah item yang ingin ditampilkan dalam grid
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Stack(
                          children: [
                            Image.asset(
                              'images/run_image3.png',  // Ganti dengan gambar produk nyata
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Text(
                                'Product ${index + 1}',  // Nama produk
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  backgroundColor: Colors.white
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => ChatUserPage(),));
      },
        backgroundColor: Colors.black,
       child: Icon(Icons.message, color: Colors.white,),),
    );
  }
}

// Widget terpisah untuk kategori dengan gaya yang lebih konsisten
class CategoryCard extends StatelessWidget {
  final String label;
  const CategoryCard({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
