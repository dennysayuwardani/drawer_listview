import 'drawer.dart'; //untuk memanggil file drawer(menu geser)
import 'package:flutter/material.dart'; //untuk memanggil file material 

void main() {
  runApp(const MyApp()); //Menjalankan aplikasi
}

class MyApp extends StatelessWidget { //StatelessWidget adalah widget yang tidak dapat diubah 
  static const header = 'XII RPL 2'; //static digunakan untuk membuat variabel yang tidak dapat diubah
  const MyApp({super.key}); //constructor dari MyApp

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { //Widget build digunakan untuk membangun tampilan halaman utama apk
    return MaterialApp( //return MaterialApp digunakan untuk membangun tampilan halaman utama apk
      title: 'Flutter Demo',
      theme: ThemeData( //ThemeData digunakan untuk mengatur tema aplikasi


        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), //ColorScheme digunakan untuk mengatur warna tema aplikasi, fromSeed untuk membuat warna tema dari seedColor atau warna dasar
        useMaterial3: true, //useMaterial3 digunakan untuk menggunakan tema Material 3
      ),
      home: const MyHomePage(title: 'Header'), //Menjalankan halaman utama (MyHomePage) dengan judul Header
    );
  }
}
