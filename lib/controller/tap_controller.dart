import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0;
  int get x => _x;

  RxInt _y = 0.obs;
  RxInt get y => _y;

  RxInt _z = 0.obs; // Deklarasikan _z sebagai RxInt
  RxInt get z => _z;

  void jumlahXY() {
    _z.value = x + _y.value;
    print(_z.value);
  }

  void tambahX() {
    _x--; // Mengurangkan _x
    update();
    print(_x);
  }
  
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class TapController extends GetxController {
//   //getbuilder/simpleway
//   int _x = 0;

// //method getter x
//   int get x => _x;

// //obx/reactive
//   RxInt _y =0.obs;

// //method getter v
//   RxInt get y=>_y;

//   RxInt z => _z;

// //method getter z
//   RxInt get z => _z;

// void SunXY() {
//   _z.value = x + _y.value;
//   print(_z.value);
// }

// void increaseX() {
//   -x++;
//   update();
//   print(_x);
// }






// }

// @override
// Widget build(BuildContext context) {
//   return const Placeholder();
// }
