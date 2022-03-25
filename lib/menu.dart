import 'package:flutter/material.dart';
import 'package:pengadaanbarang/about.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:pengadaanbarang/screens/barang_screen.dart';
import 'package:pengadaanbarang/screens/barangmasuk_screen.dart';
import 'package:pengadaanbarang/screens/supplier_screen.dart';

class menu extends StatelessWidget {
  menu({Key? key}) : super(key: key);

  final Shader _linearGradient = LinearGradient(
    colors: [Colors.blue, Colors.white],
  ).createShader(Rect.fromLTWH(160, 160, 10,
      10)); // Creates a Shader for this gradient to fill the given rect

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'PENGADAAN BARANG',
          style: TextStyle(
              fontSize: 25, foreground: Paint()..shader = _linearGradient),
        ),
        actions: [
          // action button
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {
              Route route = MaterialPageRoute(builder: (context) => about());
              Navigator.push(context, route);
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 241, 241, 241),
              Color.fromARGB(255, 241, 241, 241)
            ]),
            borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListView(
            children: [
              Container(
                  child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Menu",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              )),
              Card(
                elevation: 4,
                margin: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => SupplierScreen());
                    Navigator.push(context, route);
                  },
                  splashColor: Colors.yellow,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Icon(
                              PhosphorIcons.users_three_fill,
                              size: 32.0,
                              color: Color.fromARGB(255, 255, 195, 42),
                            )),
                        Expanded(
                          flex: 10,
                          child: Container(
                            child: Row(
                              children: [
                                Text(
                                  "Supplier",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Icon(
                              PhosphorIcons.caret_right,
                              size: 25.0,
                              color: Color(0xff515251),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 4,
                margin: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => BarangScreen());
                    Navigator.push(context, route);
                  },
                  splashColor: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Icon(
                              PhosphorIcons.archive_fill,
                              size: 32.0,
                              color: Colors.blue,
                            )),
                        Expanded(
                          flex: 10,
                          child: Container(
                            child: Row(
                              children: [
                                Text(
                                  "Barang",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Icon(
                              PhosphorIcons.caret_right,
                              size: 25.0,
                              color: Color(0xff515251),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 4,
                margin: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => BarangMasukScreen());
                    Navigator.push(context, route);
                  },
                  splashColor: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Icon(
                              PhosphorIcons.download_simple_fill,
                              size: 32.0,
                              color: Colors.green,
                            )),
                        Expanded(
                          flex: 10,
                          child: Container(
                            child: Row(
                              children: [
                                Text(
                                  "Barang Masuk",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Icon(
                              PhosphorIcons.caret_right,
                              size: 25.0,
                              color: Color(0xff515251),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 4,
                margin: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => about());
                    Navigator.push(context, route);
                  },
                  splashColor: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Icon(PhosphorIcons.upload_simple_fill,
                                size: 32.0, color: Colors.red)),
                        Expanded(
                          flex: 10,
                          child: Container(
                            child: Row(
                              children: [
                                Text(
                                  "Barang Keluar",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Icon(
                              PhosphorIcons.caret_right,
                              size: 25.0,
                              color: Color(0xff515251),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
