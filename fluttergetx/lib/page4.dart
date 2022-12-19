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
                      "https://i.ibb.co/yk0cXWK/Shaco-Estrella-Oscura-GIF.gif")),
              Text(
                "Shaco unlocked",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "llevas un total de ${punt.cantidad}",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              IconButton(
                onPressed: () {
                  punt.reiniciar();
                },
                icon: Icon(Icons.offline_bolt),
                color: Colors.white,
              )
            ],
          )),
    );
  }
}
