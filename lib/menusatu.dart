import 'package:flutter/material.dart';
import 'package:flutter_application_1/menudua.dart';
import 'package:flutter_application_1/menuinput.dart';
import 'package:flutter_application_1/secondscreen.dart';

class menusatu extends StatelessWidget {
  const menusatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("data"),
        ),
        body: Center(
            child: Column(children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Column(children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const menudua()));
                      },
                      child: Container(
                        height: 100,
                        width: 500,
                        decoration: const BoxDecoration(color: Colors.yellow),
                        child: const Center(
                          child: Text(
                            "Getbuilder",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => menuinput()));
                      },
                      child: Container(
                        height: 100,
                        width: 500,
                        decoration: const BoxDecoration(color: Colors.yellow),
                        child: const Center(
                          child: Text(
                            "obx",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 100,
                        width: 500,
                        decoration: const BoxDecoration(color: Colors.yellow),
                        child: const Center(
                          child: Text(
                            "SUM XY",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ])));
  }
}
