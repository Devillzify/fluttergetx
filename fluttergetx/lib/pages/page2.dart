import 'package:flutter/material.dart';
import 'package:fluttergetx/pages/page4.dart';
import 'package:fluttergetx/pages/pagina3.dart';
import 'package:get/get.dart';

import '../controller_get_x/compartidos.dart';

class Page2 extends StatelessWidget {
  @override
  var recibido = Get.put(Numeros());

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
                  height: 250,
                  width: double.infinity,
                  child: Image.network(
                    "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2ec970f4-1706-4915-9a93-41f3d9c8202c/dei2e27-1999099b-a6e6-4dac-8f9a-e1091b560ab4.png/v1/fill/w_1280,h_913,strp/battle_queen_katarina_png___render_by_divoras_dei2e27-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTEzIiwicGF0aCI6IlwvZlwvMmVjOTcwZjQtMTcwNi00OTE1LTlhOTMtNDFmM2Q5YzgyMDJjXC9kZWkyZTI3LTE5OTkwOTliLWE2ZTYtNGRhYy04ZjlhLWUxMDkxYjU2MGFiNC5wbmciLCJ3aWR0aCI6Ijw9MTI4MCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.boKy5a7LlfbWktvkuA-ie4F0TAlqXZsXnFFSz5qALqs",
                  ),
                ),
                onTap: () {
                  if (recibido.cantidad >= 25) {
                    Get.to(Page3());
                  }
                   else
                  {
                    Get.snackbar("Aviso", "no tienes los puntos necesarios", backgroundColor: Colors.white);
                  }
                },
              ),
              Text(
                "Puntos necesarios 25",
                style: TextStyle(color: Colors.white),
              ),
              InkWell(
                child: Container(
                  height: 250,
                  width: double.infinity,
                  child: Image.network(
                    "https://www.interrogante.mx/assets/home-images/f3d2c40b7c/Interrogante_icono-v3.png",
                  ),
                ),
                onTap: () {
                  if (recibido.cantidad >= 50) {
                    Get.to(Page4());
                  }
                  else
                  {
                    Get.snackbar("Aviso", "no tienes los puntos necesarios", backgroundColor: Colors.white);
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
