import 'dart:io';

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
        exit(0);
      default:
        print('Opción no válida, intenta de nuevo.');
    }
  }
}

// Función para agregar una nota
void agregarNota() {
  print('Escribe la nota:');
  String? nuevaNota = stdin.readLineSync();
  if (nuevaNota != null && nuevaNota.isNotEmpty) {
    notas.add(nuevaNota);
    print('Nota agregada exitosamente.');
  } else {
    print('Nota vacía, no se agregó.');
  }
}

void editarNota() {
  mostrarNotas();
  if (notas.isEmpty) return;

  print('Escribe el número de la nota que deseas editar:');
  String? input = stdin.readLineSync();
  int? index = int.tryParse(input ?? '');
  
  if (index != null && index > 0 && index <= notas.length) {
    print('Escribe la nueva nota:');
    String? nuevaNota = stdin.readLineSync();
    
    if (nuevaNota != null && nuevaNota.isNotEmpty) {
      notas[index - 1] = nuevaNota;
      print('Nota actualizada exitosamente.');
    } else {
      print('Nota vacía, no se actualizó.');
    }
  } else {
    print('Número de nota no válido.');
  }
}

void eliminarNota() {
  mostrarNotas();
  if (notas.isEmpty) return;

  print('Escribe el número de la nota que deseas eliminar:');
  String? input = stdin.readLineSync();
  int? index = int.tryParse(input ?? '');
  
  if (index != null && index > 0 && index <= notas.length) {
    notas.removeAt(index - 1);
    print('Nota eliminada exitosamente.');
  } else {
    print('Número de nota no válido.');
  }
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
