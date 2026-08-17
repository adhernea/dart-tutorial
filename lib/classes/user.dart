import 'package:tutorial_app/classes/inheritance/mixin/logger.dart';

class Product with Logger {
  void change() {
    log("Producto modificado.");
  }
}

void main(List<String> args) {
  Product p = Product();
  p.change();
  p.log("hola");
}