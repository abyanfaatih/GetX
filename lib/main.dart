import 'package:flutter/material.dart';
import 'package:flutter_application_1/menusatu.dart';
import 'package:flutter_application_1/menudua.dart';
import 'package:get/get.dart';

import 'package:flutter_application_1/menuinput.dart';
import 'package:flutter_application_1/list_screen.dart';
import 'package:flutter_application_1/list_addmapel.dart';
import 'package:flutter_application_1/menuets.dart';
// import 'package:flutter_application_1/inDec_screen.dart';
import 'inDec_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: "/", page: () => const MyApp()),
        GetPage(name: "/indec", page: () => const InDecScreen()),
        GetPage(name: "/listsc", page: () => const ListScreen()),
        GetPage(name: "/addmap", page: () => const AddMapel()),
        GetPage(name: "/nilaiawal", page: () => const MenuEtc()),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("assets/images/logo.png")],
        ),
        Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const menusatu()));
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(color: Colors.red.shade400),
                        child: const Center(
                          child: Text(
                            "obx Getbuilder",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.blue.shade400),
                      child: const Center(
                        child: Text(
                          "snackbar Dialog, BottomSheet",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.green.shade400),
                      child: const Center(
                        child: Text(
                          "Named Navigation",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.yellow.shade400),
                      child: const Center(
                        child: Text(
                          "Dependency Management",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    ));
  }
}
