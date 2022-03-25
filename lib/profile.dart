import 'package:flutter/material.dart';
import 'package:pengadaanbarang/menu.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'PROFILE',
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 241, 241, 241),
                Color.fromARGB(255, 241, 241, 241)
              ]),
              borderRadius: BorderRadius.circular(5)),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(0),
                child: SafeArea(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/image/code.jpg"),
                                fit: BoxFit.cover)),
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          child: Container(
                            alignment: Alignment(0.0, 2.5),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/image/profile.jpeg'),
                              radius: 70.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        "Akbar Ginanjar",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.blueGrey,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Bandung, Indonesia",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black45,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Sekolah di SMK Assalaam Bandung",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black45,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(
                              PhosphorIcons.instagram_logo_fill,
                              size: 40.0,
                              color: Color.fromARGB(181, 0, 0, 0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(
                              PhosphorIcons.whatsapp_logo_fill,
                              size: 40.0,
                              color: Color.fromARGB(181, 0, 0, 0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(
                              PhosphorIcons.twitter_logo_fill,
                              size: 40.0,
                              color: Color.fromARGB(181, 0, 0, 0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(
                              PhosphorIcons.facebook_logo_fill,
                              size: 40.0,
                              color: Color.fromARGB(181, 0, 0, 0),
                            ),
                          )
                        ],
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      "Repo",
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      "14",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      "Pengikut",
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      "130",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
