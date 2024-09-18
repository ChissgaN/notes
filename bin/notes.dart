import 'package:notes/notes.dart' as notes;
import 'dart:io';

void main() {
  print('--- Gestor de Notas ---');

  while (true) {
    print('\nElige una opción:');
    print('1: Agregar una nota');
    print('2: Editar una nota');
    print('3: Eliminar una nota');
    print('4: Mostrar todas las notas');
    print('5: Salir');

    String? input = stdin.readLineSync();

    switch (input) {
      case "1":
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

void agregarNota() {
  print('Función para agregar nota.');
}

void editarNota() {
  print('Función para editar nota.');
}

void eliminarNota() {
  print('Función para eliminar nota.');
}

void mostrarNotas() {
  print('Función para mostrar notas.');
}
