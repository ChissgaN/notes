import 'dart:io'; // Para manejar la entrada/salida de la consola

// Lista global para almacenar las notas
List<String> notas = [];

void main() {
  print('--- Gestor de Notas ---');

  // Bucle principal del programa para mostrar el menú
  while (true) {
    print('\nElige una opción:');
    print('1: Agregar una nota');
    print('2: Editar una nota');
    print('3: Eliminar una nota');
    print('4: Mostrar todas las notas');
    print('5: Salir');

    // Leer la opción del usuario
    String? input = stdin.readLineSync();

    // Evaluar la opción y ejecutar la acción correspondiente
    switch (input) {
      case '1':
        agregarNota();
        break;
      case '2':
        editarNota();
        break;
      case '3':
        eliminarNota();
        break;
      case '4':
        mostrarNotas();
        break;
      case '5':
        print('¡Hasta luego!');
        exit(0); // Termina el programa
      default:
        print('Opción no válida, intenta de nuevo.');
    }
  }
}

// Función para agregar una nota
void agregarNota() {
  print('Escribe la nota:');
  String? nuevaNota = stdin.readLineSync(); // Leer la entrada del usuario
  if (nuevaNota != null && nuevaNota.isNotEmpty) {
    notas.add(nuevaNota); // Agregar la nota a la lista
    print('Nota agregada exitosamente.');
  } else {
    print('Nota vacía, no se agregó.');
  }
}

void editarNota() {
  print('Función para editar nota.');
}

void eliminarNota() {
  print('Función para eliminar nota.');
}

void mostrarNotas() {
  if (notas.isEmpty) {
    print('No hay notas para mostrar.');
  } else {
    print("--- Tus Notas ---");
    for (int i = 0; i < notas.length; i++) {
      print('${i + 1}: ${notas[i]}');
    }
  }
}
