import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'compartidos.dart';

class Page3 extends StatelessWidget {
  var cant = Get.put(Numeros());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 84, 84, 84),
          title: const Text('Puntos Necesarios 25'),
        ),
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 400,
                child: Image.network(
                    "https://media.tenor.com/Q3aAPnznYggAAAAd/katarina.gif"),
              ),
              Text(
                "Katarina unlocked",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "Llevas un total de ${cant.cantidad} puntos",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              IconButton(
                onPressed: () {
                  cant.reiniciar();
                },
                icon: Icon(Icons.offline_bolt),
                color: Colors.white,
              )
            ],
          ),
        ));
  }
}
