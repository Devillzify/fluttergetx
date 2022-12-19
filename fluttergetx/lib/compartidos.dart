import 'package:get/get.dart';

class Numeros extends GetxController {
  int cantidad = 0;

  void incrementar() {
    cantidad++;
    update();
  }

  void reiniciar() {
    cantidad = 0;
    update();
  }
}
