import 'package:flutter/material.dart';
import 'package:pengadaanbarang/about.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class dashboard extends StatelessWidget {
  dashboard({Key? key}) : super(key: key);

  final Shader _linearGradient = LinearGradient(
    colors: [Colors.blue, Colors.white],
  ).createShader(Rect.fromLTWH(160, 160, 10, 10));

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
        child: Stack(
          children: <Widget>[
            dashBg,
            content,
          ],
        ),
      ),
    );
  }

  get dashBg => Column(
        children: <Widget>[
          Expanded(
            child: Container(
              // decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //         begin: Alignment.topRight,
              //         end: Alignment.bottomLeft,
              //         stops: [
              //       0.1,
              //       0.4,
              //       0.7,
              //       0.5
              //     ],
              //         colors: [
              //       Color.fromARGB(255, 132, 202, 255),
              //       Color.fromARGB(255, 69, 172, 251),
              //       Colors.blue,
              //       Colors.blue,
              //     ])),
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Colors.blue,
                    Colors.blueAccent,
                    Color.fromARGB(255, 120, 194, 255)
                  ],
                  center: Alignment(0.9, -0.8),
                  focal: Alignment(0.3, -0.5),
                  focalRadius: 2.0,
                ),
              ),
            ),
            flex: 3,
          ),
          Expanded(
            child: Container(color: Colors.transparent),
            flex: 5,
          ),
        ],
      );
  get header => ListTile(
        contentPadding: EdgeInsets.only(left: 20, right: 20, top: 20),
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            'SELAMAT DATANG, Aplikasi pengadaan barang',
            style: TextStyle(color: Colors.white),
          ),
        ),
        trailing: CircleAvatar(
          backgroundImage: AssetImage("assets/image/icon.png"),
        ),
      );

  get content => Container(
        child: Column(
          children: <Widget>[
            header,
            new GestureDetector(
              onTap: () {
                Route route = MaterialPageRoute(builder: (context) => about());
                // Navigator.push(context, route);
              },
              child: new Container(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(95, 63, 63, 63),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 2), // changes position of shadow
                          )
                        ],
                        color: Colors.white,
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.40),
                              BlendMode.multiply),
                          image: AssetImage('assets/image/banner.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text(
                                '',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            alignment: Alignment.center,
                          )
                        ],
                      ),
                      height: 180,
                      margin: EdgeInsets.all(10),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Card(
                      child: Container(
                        height: 100,
                        width: 160,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: ListTile(
                                        title: Text("Supplier"),
                                        subtitle: Text("14"),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Icon(
                                            PhosphorIcons.users_three_fill,
                                            size: 32.0,
                                            color: Color.fromARGB(
                                                255, 255, 195, 42),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              flex: 8,
                            ),
                          ],
                        ),
                      ),
                      elevation: 6,
                      margin: EdgeInsets.all(10),
                    ),
                    Card(
                      child: Container(
                        height: 100,
                        width: 160,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: ListTile(
                                        title: Text("Total Barang"),
                                        subtitle: Text("20"),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Icon(
                                            PhosphorIcons.archive_fill,
                                            size: 32.0,
                                            color: Colors.blue,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              flex: 8,
                            ),
                          ],
                        ),
                      ),
                      elevation: 6,
                      margin: EdgeInsets.all(10),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Card(
                      child: Container(
                        height: 100,
                        width: 160,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: ListTile(
                                        title: Text("Barang Masuk"),
                                        subtitle: Text("30"),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Icon(
                                            PhosphorIcons.download_simple_fill,
                                            size: 32.0,
                                            color: Colors.green,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              flex: 8,
                            ),
                          ],
                        ),
                      ),
                      elevation: 6,
                      margin: EdgeInsets.all(10),
                    ),
                    Card(
                      child: Container(
                        height: 100,
                        width: 160,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: ListTile(
                                        title: Text("Barang Keluar"),
                                        subtitle: Text("22"),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Icon(PhosphorIcons.upload_simple_fill,
                                              size: 32.0, color: Colors.red),
                                          SizedBox(
                                            width: 15,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              flex: 8,
                            ),
                          ],
                        ),
                      ),
                      elevation: 6,
                      margin: EdgeInsets.all(10),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
}
