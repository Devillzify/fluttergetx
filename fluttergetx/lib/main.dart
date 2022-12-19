import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttergetx/page2.dart';
import 'package:get/get.dart';

import 'compartidos.dart';

void main() {
  Get.put(Controller());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  var comprobar = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 84, 84, 84),
          title: const Text(
            'Get X example',
            style: TextStyle(
                fontSize: 25, color: Color.fromARGB(255, 71, 234, 255)),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 400,
                    height: 100,
                    child: Center(
                      child: Text(
                        "Prueba Gestion con Get X",
                        style: TextStyle(
                            color: Color.fromARGB(255, 71, 249, 255),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                  height: 100,
                  width: double.infinity,
                  child: GetBuilder<Controller>(
                    builder: (controller) {
                      return Center(
                          child: Text(
                        "Cantidad: ${controller.cantidad}",
                        style: TextStyle(
                            color: Color.fromARGB(255, 88, 236, 255),
                            fontSize: 25),
                      ));
                    },
                  )),
              InkWell(
                child: Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    "https://i.pinimg.com/originals/e3/b3/e6/e3b3e6546b443a9dce69a195843d244f.gif",
                  ),
                ),
                onTap: () {
                  Get.find<Controller>().incrementar();
                },
                onLongPress: () {
                  Get.find<Controller>().reiniciar();
                },
              ),
              InkWell(
                child: Container(
                  height: 100,
                  width: 200,
                  child: Image.network(
                    "https://icons.iconarchive.com/icons/fazie69/league-of-legends/512/Teemo-Panda-icon.png",
                  ),
                ),
                onTap: () {
                  Get.to(Page2());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
