import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/home_controller.dart';
import 'package:get/get.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('List Screen'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: hc.namaSiswa,
              decoration: InputDecoration(labelText: 'nama Siswa'),
            ),
            ElevatedButton(
                onPressed: () {
                  hc.tambahKeList(hc.namaSiswa.text);
                },
                child: Text('Submit')),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  itemCount: hc.siswaNama.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Text(hc.siswaNama.value[index]),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
