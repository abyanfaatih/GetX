import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controller/home_controller.dart';
import 'package:flutter_application_1/secondscreen.dart';

class menuinput extends StatelessWidget {
  const menuinput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController hc = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  color: Colors.white,
                  width: 500,
                  height: 170,
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/indec');
                          },
                          child: const Text('Increase/Decrease')),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/listsc');
                          },
                          child: const Text('List Screen')),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/addmap');
                          },
                          child: const Text('Add Mapel')),
                        const SizedBox(
                          height: 10,
                        ),
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/nilaiawal');
                          },
                          child: const Text('Nilai Awal GetX')),
                    ],
                  ),
                ));
              },
              icon: const Icon(Icons.edit_note_outlined))
        ],
      ),

      // body: Column(
      //   children: [
      //     TextField(
      //         controller: hc.abc,
      //         decoration: const InputDecoration(labelText: 'Masukkan Nama : '),
      //         onSubmitted: (value) {
      //           hc.ChangeName(hc.abc.text);
      //         }),
      //     SizedBox(
      //       height: 10,
      //     ),
      //     GetBuilder<HomeController>(builder: (hc) {
      //       return Text("${hc.nama}");
      //     })

      //     Row(
      //       children: [
      //         Obx(() => Text(hc.isOpen.value ? "open" : "closed")),
      //         Obx(() => Switch(
      //           value: hc.isOpen.value,
      //           activeColor: Colors.green,
      //           onChanged: (value) {
      //             hc.setisOpen(value);
      //           },
      //         ))
      //       ],
      //     )
      //   ],
      // ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const SizedBox(height: 10),
            TextField(
              controller: hc.abc,
              decoration:
                  const InputDecoration(labelText: 'Nama yang di text input'),
              onSubmitted: (value) {
                // hc.UpdateName(hc.abc.text);
                Get.snackbar("title", value,
                    snackPosition: SnackPosition.TOP,
                    duration: const Duration(seconds: 3));
                // Get.defaultDialog(
                //   title: "Nama yang di input",
                //   middleText: hc.abc.text,
                //   onConfirm: () {
                //     Get.to(const SecondScreen(), arguments: hc.abc.text);
                //   },
                // );
              },
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              // child: Obx(() => Text(hc.nama.value)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => Text(hc.isOpen.value ? "open" : "closed")),
                Obx(() => Switch(
                      value: hc.isOpen.value,
                      activeColor: Colors.green,
                      inactiveTrackColor: Colors.red,
                      onChanged: (value) {
                        hc.setTog(value);
                      },
                    ))
              ],
            ),

            // Obx(
            //   () => Switch(
            //       value: hc.isOpen.value,
            //       activeColor: Colors.green,
            //       inactiveTrackColor: Colors.red,
            //       onChanged: (value) {
            //         hc.setTog(value);
            //       }),
            // )
          ],
        ),
      ),
    );
  }
}

// void main() {
//   runApp(
//     GetMaterialApp(
//       home: menuinput(),
//     ),
//   );
// }
