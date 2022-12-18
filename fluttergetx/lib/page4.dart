import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'compartidos.dart';

class Page4 extends StatelessWidget {
  var punt = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Puntos necesarios 50'),
        backgroundColor: Color.fromARGB(255, 84, 84, 84),
      ),
      body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                      "https://media.tenor.com/jWRFHjiNdkgAAAAd/anime-dance.gif")),
              Text(
                "La waifu bailona de los 50 puntos",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "llevas un total de ${punt.cantidad}",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )
            ],
          )),
    );
  }
}
