class MathUtils {
  static double pi = 3.14159;

  static void showMessage() {
    print("Este método pertenece a la clase");
  }
}

void main() {
  print(MathUtils.pi);
  MathUtils.showMessage();
}