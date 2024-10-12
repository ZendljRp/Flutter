void main() {
  // Definir las dos listas
  List<String> alfabeto = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"];
  List<String> alfabetoHacker = ["4", "|3", "[", ")", "3", "|=", "&", "#", "1", ",_|", ">|", "1", "/\\/\\", "^/", "0", "|*", "(_,)", "|2", "5", "7", "(_)", "\\/", "\\/\\/", "><", "j", "2"];

  // Pedir al usuario que ingrese una palabra
  
  String input = "junior";

  // Asegurarse de que el input no sea nulo o vacío
  if (input != null && input.isNotEmpty) {
    String palabraHacker = "";

    // Convertir la palabra ingresada a mayúsculas para coincidir con el alfabeto
    input = input.toUpperCase();

    // Recorrer cada letra de la palabra ingresada
    for (int i = 0; i < input.length; i++) {
      String letra = input[i];

      // Verificar si la letra está en la lista del alfabeto
      if (alfabeto.contains(letra)) {
        // Obtener el índice de la letra en el alfabeto
        int index = alfabeto.indexOf(letra);

        // Usar el índice para obtener la letra correspondiente en el alfabetoHacker
        palabraHacker += alfabetoHacker[index];
      } else {
        // Si el carácter no está en el alfabeto (como espacios o símbolos), mantenerlo igual
        palabraHacker += letra;
      }
    }
    
    // Mostrar la palabra ingresada
    print("Palabra en alfabeto normal: $input");

    // Mostrar la palabra convertida
    print("Palabra en alfabeto hacker: $palabraHacker");
  } else {
    print("No ingresaste ninguna palabra.");
  }
}