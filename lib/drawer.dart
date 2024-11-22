import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  //Kelas utama yang bertugas untuk membuat halaman utama apk
  const MyHomePage(
      {super.key,
      required this.title}); //Constructor untuk menerima judul halaman utama
  final String title; //Variabel untuk menyimpan judul halaman utama

  @override
  Widget build(BuildContext context) {
    //Fungsi utama untuk membangun tampilan halaman utama
    return Scaffold(
        //Scaffold adalah widget utama untuk membuat tampilan halaman
        appBar: AppBar(
          //AppBar adalah widget untuk membuat header halaman
          title: const Text(
            'Header',
            style: TextStyle(
                color: Colors
                    .white), //TextStyle untuk mengatur gaya teks baik ukuran, warna, dan lainnya
          ),
          backgroundColor: Colors
              .blue[900], //Memberikan warna biru tua pada latar belakang header
          foregroundColor: Colors
              .white, //ForegroundColor digunakan untuk mengatur warna ikon/elemen di header
        ),
        drawer: buildGroupDrawer(
            context), //Drawer adalah menu yang bisa digeser dari sebelah kiri halaman utama
        body: Center(
          child: Text(
              'Pemrograman Mobile $title'), //Menampilkan teks di tengah halaman menggunakan widget Text
        )

        // body: GridView.count(
        //   crossAxisCount: 2,
        //   crossAxisSpacing: 10.0,
        //   mainAxisSpacing: 10.0,
        //   shrinkWrap: true,
        //   children: List.generate(10, (index) {
        //     return Padding(
        //         padding: const EdgeInsets.all(10.0),
        //         child: Container(
        //           height: 5.0,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(20.0),
        //             color: Colors.blue[200],
        //           ),
        //           child: Text(
        //             'Materi $index',
        //             textAlign: TextAlign.center,
        //             style: const TextStyle(color: Colors.black, fontSize: 20.0),
        //           ),
        //         ));
        //   }),
        // );
        );
  }

  Widget buildGroupDrawer(BuildContext context) {
    //Fungsi untuk membuat menu geser (drawer) di sisi kiri halaman
    return Drawer(
        child: ListView(
            //ListView adalah widget untuk membuat daftar menu yang dapat digeser atau di scroll
            padding: EdgeInsets.zero,
            children: <Widget>[
          //Padding untuk memberikan jarak antara konten di dalam kotak menu dengan dinding kotak itu sendiri.
          DrawerHeader(
            //DraweHeader digunakan untuk membuat bagian atas dari menu geser(drawer)
            decoration: BoxDecoration(
              //Decoration digunakan untuk memberikan dekorasi pada bagian atas dari menu geser dengan warna biru
              color: Colors.blue[900],
            ),

            //Menambahkan informasi akun pengguna di header
            child: UserAccountsDrawerHeader(
              //UserAccountsDrawerHeader digunakan untuk membuat bagian atas dari menu geser
              decoration: BoxDecoration(
                  color: Colors.blue[
                      900] //BoxDecoration digunakan untuk memberikan dekorasi pada bagian atas dari menu geser dengan warna biru
                  ),
              accountName: const Text(
                'Dennys Ayu Wardani',
                style: TextStyle(
                    fontSize:
                        18.0), //accountName digunakan untuk menampilkan nama saya
              ),
              accountEmail: const Text(
                  'dennysayuwardani@gmail.com'), //accountEmail digunakan untuk menampilkan email saya
              currentAccountPictureSize: const Size.square(
                  40.0), //currentAccountPictureSize digunakan untuk menentukan ukuran gambar akun saya, Square digunakan untuk membuat gambar persegi ukurannya bisa disesuaikan
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors
                    .white, //currentAccountPicture digunakan untuk menentukan gambar akun saya, CircleAvatar digunakan untuk membuat gambar lingkaran
                child: Text(
                  'D',
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors
                          .blue), //Text digunakan untuk menampilkan inisial saya
                ),
              ),
            ),

            // child: const Text(
            //   'Dennys Ayu Wardani',
            //   style: TextStyle(color: Colors.white, fontSize: 30.0),
            // ),
          ),
          const ListTile(
            leading: Icon(Icons
                .person), //ListTile untuk menampilkan gambar, ikon dan teks pada menu
            title: Text('Dennys'),
            subtitle: Text('XII RPL 2'),
            trailing: Icon(Icons
                .chevron_right), // trailing untuk menampilkan ikon chevron_right (panah ke kanan)
          )

          // ExpansionTile(title: const Text('Materi'), children: <Widget>[
          //   ListTile(
          //     title: const Text('Materi 1'),
          //     onTap: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          //   ListTile(
          //     title: const Text('Materi 2'),
          //     onTap: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          //   ListTile(
          //     title: const Text('Materi 3'),
          //     onTap: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          //   ListTile(
          //     title: const Text('Materi 4'),
          //     onTap: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          //   ListTile(
          //     title: const Text('Materi 5'),
          //     onTap: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          // ]),
          // ExpansionTile(title: const Text('Tugas'), children: <Widget>[
          //   ListTile(
          //     title: const Text('Tugas 1'),
          //     onTap: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          //   ListTile(
          //     title: const Text('Tugas 2'),
          //     onTap: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          //   ListTile(
          //     title: const Text('Tugas 3'),
          //     onTap: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          //   ListTile(
          //     title: const Text('Tugas 4'),
          //     onTap: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          //   ListTile(
          //     title: const Text('Tugas 5'),
          //     onTap: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          // ]
          // )
        ]));
  }
}
