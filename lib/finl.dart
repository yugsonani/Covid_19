import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => finl(),
    },
  ));
}

class finl extends StatefulWidget {
  const finl({Key? key}) : super(key: key);

  @override
  State<finl> createState() => _finlState();
}

class _finlState extends State<finl> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "${data['loc']}",
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 20)),
          Center(
              child: Text(
            "${data['loc']}",
            style: const TextStyle(
              fontSize: 100,
            ),
          )),
          const Card(
            child: Text(
              "Covid_19 All Data",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 50)),
          Container(
            width: 320,
            height: 300,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "ConfirmedCasesIndian:${data['confirmedCasesIndian']}",
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "ConfirmedCasesForeign:${data['confirmedCasesForeign']}",
                    style: const TextStyle(color: Colors.black, fontSize: 19),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Discharged:${data['discharged']}",
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Deaths:${data['deaths']}",
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "TotalConfirmed:${data['totalConfirmed']}",
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
