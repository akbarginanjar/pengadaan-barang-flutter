import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:pengadaanbarang/controllers/barang_controller.dart';
import 'package:pengadaanbarang/controllers/supplier_controller.dart';
import 'package:pengadaanbarang/models/supplier_model.dart';

import '../controllers/user_controller.dart';

class BarangScreen extends StatelessWidget {
  const BarangScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BarangController barangcontroller = Get.put(BarangController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'DATA BARANG',
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Obx(
              () => barangcontroller.isLoading()
                  ? Center(child: const CircularProgressIndicator())
                  : Center(
                      child: ListView.builder(
                      itemCount: barangcontroller.barangList.length,
                      itemBuilder: (content, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 320,
                              height: 150,
                              margin: EdgeInsets.only(bottom: 8, top: 8),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                gradient: RadialGradient(
                                  colors: [
                                    Color.fromARGB(255, 51, 75, 255),
                                    Colors.blue,
                                    Color.fromARGB(255, 131, 187, 255)
                                  ],
                                  center: Alignment(0.9, -0.8),
                                  focal: Alignment(0.3, -0.5),
                                  focalRadius: 2.0,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(95, 63, 63, 63),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: Offset(
                                        0, 2), // changes position of shadow
                                  )
                                ],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Kode barang : ",
                                          style: TextStyle(
                                            fontSize: 23,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          barangcontroller
                                              .barangList[index].kodeBarang
                                              .toString(),
                                          style: TextStyle(
                                            fontSize: 23,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Nama barang : ",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          barangcontroller
                                              .barangList[index].namaBarang
                                              .toString(),
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Jenis barang : ",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          barangcontroller
                                              .barangList[index].jenis
                                              .toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Satuan barang : ",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          barangcontroller
                                              .barangList[index].satuan
                                              .toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "Stok : ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text(
                                            barangcontroller
                                                .barangList[index].stok
                                                .toString(),
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    )),
            ),
          ),
        ),
      ),
    );
  }
}
