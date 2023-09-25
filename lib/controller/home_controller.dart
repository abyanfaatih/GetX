import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController abc = TextEditingController();

  TextEditingController namaSiswa = TextEditingController();
  TextEditingController namaMapel = TextEditingController();
  TextEditingController jnsMapel = TextEditingController();

  // RxString nama = RxString('');
  RxBool isOpen = RxBool(true);
  RxBool isClose = RxBool(false);

  RxInt count = RxInt(0);
  RxList<String> siswaNama = RxList<String>();
  RxMap<String, String> listMapel = RxMap<String, String>();

  // UpdateName(String name) {
  //   nama.value = name;
  //   return name;
  // }

  void setTog(bool toggle) {
    isOpen(toggle);
    print(toggle);
  }

  RxInt x = 0.obs;

  void increaseX() {
    x.value++;
  }

  void decreaseX() {
    x.value--;
  }

  // LIST SCREEN

  void tambahKeList(String nama) {
    siswaNama.add(nama);
    print(siswaNama.value);
  }

  void addSiswa(String nama) {
    siswaNama.add(nama);
    namaSiswa.text = '';
    print(siswaNama.value);
  }

  void removeSiswa(int index) {
    siswaNama.removeAt(index);
  }

  void addMapel(String namaMapel, String jnsMapel) {
    listMapel[namaMapel] = jnsMapel;
    print(listMapel.value);
  }

  // void ChangeName(String nm) {
  //   nama = nn; // Mengganti nilai nama dengan teks baru
  //   print(nama);
  //   // Get.snackbar('nilai dari variabel nama adalah : ', nama,
  //   //     snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 3));
  // }
}
