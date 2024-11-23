import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // Menonaktifkan banner debug
        home: Scaffold( // Scaffold adalah struktur dasar untuk layout
          appBar: AppBar(
            title: Text('item service coffe'), // Menampilkan judul aplikasi di AppBar
          ),
          body: ListView( //Listview digunakan untuk membuat list secara urut
            padding: EdgeInsets.all(16), // Menambahkan padding di sekitar ListView
            children: [
              Container( // Container adalah wadah untuk menampung widget
                padding: EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 60.0), 
                decoration: BoxDecoration(
                    color: Colors.brown[50],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0), // Membuat sudut kiri atas melengkung
                      topRight: Radius.circular(20.0), // Membuat sudut kanan atas melengkung
                      bottomLeft: Radius.circular(180.0), //Membuat sudut kiri bawah melengkung lebih besar
                      bottomRight: Radius.circular(180.0), // Membuat sudut kanan bawah melengkung lebih besar
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.brown,
                        blurRadius: (6.0), // Mengatur seberapa kabur bayangan
                        offset: (Offset(1.0, 3.0)), // Mengatur posisi bayangan
                      )
                    ]),
                child: Column(
                  children: [
                    ClipRRect( // ClipRRect digunakan untuk memotong gambar dengan sudut melengkung
                      borderRadius: BorderRadius.circular(100), // Memotong gambar dengan radius besar untuk menghasilkan bentuk lingkaran
                      child: Image.asset(
                        'asset/coffee.jpg',
                        fit: BoxFit.cover, // Mengatur gambar agar menutupi seluruh area dengan proporsional
                        height: 100.0,
                        width: 100.0,
                      ),
                    ),
                    SizedBox(
                      height: 16.0, // Menggatur jarak tinggi untuk gambar dan teks
                    ),
                    Text( // Menampilkan teks judul produk
                      "Caffè Latte",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown[900],
                      ),
                    ),
                    SizedBox(
                      height: 16.0, // Menggatur jarak tinggi untuk judul dan deskripsi
                    ),
                    // Menampilkan deskripsi produk
                    Text( 
                        "A caffè latte is simply a shot or two of bold, tasty espresso with fresh, sweet steamed milk over it.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.0,
                        )),
                    const SizedBox(
                      height: 30.0, // Menggatur jarak tinggi untuk deskripsi dan tombol
                    ),
                    TextButton( // Tombol dengan teks yang bisa ditekan untuk aksi
                      onPressed: () { // Fungsi yang dijalankan saat tombol ditekan
                        print('Explore More'); // Menampilkan pesan di console saat tombol ditekan
                      },
                      style: ButtonStyle( // Menyesuaikan gaya tombol
                          padding: WidgetStateProperty.resolveWith((states) {
                        return const EdgeInsets.symmetric( // Menambahkan padding pada tombol
                          horizontal: 30.0, // Padding horizontal
                          vertical: 16.0, // Padding vertikal
                        );
                      }), backgroundColor: // Mengatur warna latar belakang tombol
                              WidgetStateProperty.resolveWith((states) {
                        return Colors.brown[700];
                      }), foregroundColor: // Mengatur warna teks tombol
                              WidgetStateProperty.resolveWith((states) {
                        return Colors.white;
                      }), shape: WidgetStateProperty.resolveWith( // Membuat tombol dengan sudut melengkung
                        (states) {
                          return RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30), // Menentukan kelengkungan sudut tombol
                          );
                        },
                      )),
                      child: const Text('Explore Now'), // Menentukan kelengkungan sudut tombol
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
