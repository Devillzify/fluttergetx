import 'package:flutter/material.dart';
import 'package:fluttergetx/page4.dart';
import 'package:fluttergetx/pagina3.dart';
import 'package:get/get.dart';

import 'compartidos.dart';

class Page2 extends StatelessWidget {
  @override
  var recibido = Get.put(Controller());

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 84, 84, 84),
          title: const Text('Get X page 2'),
        ),
        body: Center(
          child: Column(
            children: [
              InkWell(
                child: Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    "https://www.adhesivosnatos.com/wp-content/uploads/2020/03/pegatina-pikachu-pokemon-vinilo-troquelado.png",
                  ),
                ),
                onTap: () {
                  if (recibido.cantidad >= 25) {
                    Get.to(Page3());
                  }
                },
              ),
              Text(
                "Puntos necesarios 25",
                style: TextStyle(color: Colors.white),
              ),
              InkWell(
                child: Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    "https://www.pngmart.com/files/13/Zero-Two-Transparent-Images-PNG.png",
                  ),
                ),
                onTap: () {
                  if (recibido.cantidad >= 50) {
                    Get.to(Page4());
                  }
                },
              ),
              Text(
                "Puntos necesarios 50",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ));
  }
}
