import 'package:flutter/material.dart';

class menudua extends StatelessWidget {
  const menudua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("DUA"),
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
                            "0",
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
                            builder: (context) => const menudua()));
                      },
                      child: Container(
                        height: 100,
                        width: 500,
                        decoration: const BoxDecoration(color: Colors.yellow),
                        child: const Center(
                          child: Text(
                            "Increase",
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
                            builder: (context) => const menudua()));
                      },
                      child: Container(
                        height: 100,
                        width: 500,
                        decoration: const BoxDecoration(color: Colors.yellow),
                        child: const Center(
                          child: Text(
                            "Derease",
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
