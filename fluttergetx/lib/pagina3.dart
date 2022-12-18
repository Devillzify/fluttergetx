import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'compartidos.dart';

class Page3 extends StatelessWidget {
  var cant = Get.put(Controller());
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
                    "https://aniyuki.com/wp-content/uploads/2022/03/aniyuki-pokemon-25.gif"),
              ),
              Text(
                "Has encontrado al Pikachu de los 25 clicks",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "Llevas un total de ${cant.cantidad} puntos",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )
            ],
          ),
        ));
  }
}
