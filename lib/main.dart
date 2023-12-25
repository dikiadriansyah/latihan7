import 'package:flutter/material.dart';

void main() {
  runApp(const AppKu());
}

class AppKu extends StatelessWidget{
  const AppKu({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Latihan 5',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: const FirstScreen(), // Panggil FirstScreen di sini
    );
  }
}

class FirstScreen extends StatelessWidget{
  /*
  Pada kode di atas kita membuat sebuah StatelessWidget bernama FirstScreen, yang merupakan widget tampilan kita. Kemudian di dalam method build kita panggil Scaffold.
   */

  const FirstScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // ----------------------
      // menambahkan AppBar pada Scaffold.
      /*
      menambahkan parameter appBar pada Scaffold dan menambahkan title pada AppBar tersebut.
      Title di sini tidak hanya spesifik Text saja, melainkan juga dapat diisi dengan widget lainnya seperti TextField untuk kolom pencarian atau yang lainnya.
       */
        appBar: AppBar(
            title: const Text('Halaman Pertama'),
            // -----------------
            //   menambahkan widget-widget actions
            //   menambahkan menu ikon search

            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: (){},
              )
            ],
            // ------------------------------
            //   menambahkan ikon menu
            /*
          Tidak seperti pada actions, leading hanya dapat menampung satu widget saja. Secara default, leading akan berisi tombol untuk kembali ke halaman sebelumnya (jika tersedia), atau tombol untuk menu drawer (jika kita mengatur untuk drawer pada Scaffold tersebut)
           */
            leading: IconButton(
              icon: const Icon(
                  Icons.menu,
                  color: Colors.white
              ),
              onPressed: (){},
            )
        ),
        // ------------------------
        //   kode untuk menambahkan body.
        /*
        menambahkan body yang di dalamnya kita memanggil widget Center yang akan menampilkan Text "Hello World!".
         */
        body: Center(
          child: const Text('Text berada di tengah'),
        ),

        // -------------------

        //   kode untuk floatingactionbutton
        /*
        FloatingActionButton ini merupakan bagian dari Scaffold yang digunakan untuk menampilkan sebuah tombol aksi yang posisinya floating (melayang dan posisinya tetap).
         */
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: (){},
        )
    );
  }
}
