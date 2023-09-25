import 'package:flutter_application_1/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddMapel extends StatelessWidget {
  const AddMapel({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hc = Get.find();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: hc.namaMapel,
              decoration: InputDecoration(label: Text("Nama Mapel")),
            ),
            TextField(
              controller: hc.jnsMapel,
              decoration: InputDecoration(label: Text("Kode Mapel")),
            ),
            ElevatedButton(
                onPressed: () {
                  hc.addMapel(hc.namaMapel.text, hc.jnsMapel.text);
                },
                child: Text("Submit")),
            Expanded(
              child: Obx(
                () => ListView.builder(
                    itemCount: hc.listMapel.length,
                    itemBuilder: (context, index) {
                      String key = hc.listMapel.keys.elementAt(index);
                      return ListTile(
                        title: Text('${hc.listMapel[key]}'),
                        // title: Text('${hc.listMapel[key]?["nama"]}'),
                        // subtitle: Text('${hc.listMapel[key]?["kode"]}'),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
