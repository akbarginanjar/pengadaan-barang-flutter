import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tentang Kami"),
          backgroundColor: Colors.black,
        ),
        body: ListView(children: <Widget>[
          Image.asset('assets/image/logo.png'),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 241, 241, 241),
                  Color.fromARGB(255, 241, 241, 241)
                ]),
                borderRadius: BorderRadius.circular(5)),
            padding: EdgeInsets.all(15),
            child: Text('Aplikasi Mobile Pengadaan Barang',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 241, 241, 241),
                  Color.fromARGB(255, 241, 241, 241)
                ]),
                borderRadius: BorderRadius.circular(5)),
            padding: EdgeInsets.all(15),
            child: Text(
                '''Lorem Ipsum adalah contoh teks atau ...Contoh kasus misalkan kita ingin membuat sebuah halaman detail aplikasi baca berita. Dimana biasanya untuk halaman tesebut umumnya memiliki item judul dan deskripsi. Untuk panjang deskripsi pada sebuah berita beragam dan bisa sangat panjang.

Dari contoh kasus di atas kita dapat simpulkan bahwa untuk jumlah item widgetnya sudah pasti (fix) yaitu hanya dua widget saja (title dan deskripsi). sedangkan untuk ukuran dari tinggi widget deskripsi bersifat dinamis sehingga ada kemungkinan melebihi ukuran tinggi layar. Pada kasus seperti ini maka ListWidget adalah yang paling aman. contoh kodenya seperti dibawah iniContoh kasus misalkan kita ingin membuat sebuah halaman detail aplikasi baca berita. Dimana biasanya untuk halaman tesebut umumnya memiliki item judul dan deskripsi. Untuk panjang deskripsi pada sebuah berita beragam dan bisa sangat panjang.
''',
                style: TextStyle(fontSize: 16)),
          ),
        ]));
  }
}
