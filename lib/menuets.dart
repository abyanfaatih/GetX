import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controller/home_controller.dart';

class MenuEtc extends StatelessWidget {
  const MenuEtc({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController ic = Get.put(HomeController());
    HomeController hc = Get.find();
    return Scaffold(
        appBar: AppBar(
          title: Text('Nilai Awal GetX'),
          // backgroundColor: Colors.red,
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(5),
                  // margin: EdgeInsets.only(bottom: 10),
                  color: Colors.blue,
                  child: Text(
                    'XII RPL 2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.blue,
                  child: Row(
                    children: [
                      Text('Jumlah Siswa'),
                      const Spacer(),
                      Obx(() => Text(ic.x.toString())),
                      const Spacer(),
                      IconButton(onPressed: (){ic.increaseX();}, icon: const Icon(Icons.add)),
                      
                      
                      // const Spacer(),
                      IconButton(onPressed: (){ic.decreaseX();}, icon: const Icon(Icons.remove)),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(5),
                  // margin: EdgeInsets.only(bottom: 10),
                  color: Colors.blue,
                  child: Text(
                    'NAMA SISWA',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Obx(
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
                
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.blue,
                  child: Text(
                    'DAFTAR NAMA PELAJARAN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
