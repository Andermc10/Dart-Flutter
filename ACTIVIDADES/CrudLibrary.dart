import 'dart:io';

void agregarLibro(List<Map<String, dynamic>> libros) {
  print('Ingrese el título del libro: ');
  String? titulo = stdin.readLineSync();
  if (titulo == null || titulo.isEmpty) {
    print('Error: El título no puede estar vacío.');
    return;
  }

  print('Ingrese el autor del libro: ');
  String? autor = stdin.readLineSync();
  if (autor == null || autor.isEmpty) {
    print('Error: El autor no puede estar vacío.');
    return;
  }

  print('Ingrese el año de publicación: ');
  String? anioStr = stdin.readLineSync();
  int? anio;
  try {
    anio = int.parse(anioStr!);
  } catch (e) {
    print('Error: El año debe ser un número válido.');
    return;
  }

  Map<String, dynamic> libro = {
    'titulo': titulo,
    'autor': autor,
    'anio': anio,
  };

  libros.add(libro);
  print('Libro agregado exitosamente.');
}

void listarLibros(List<Map<String, dynamic>> libros) {
  if (libros.isEmpty) {
    print('No hay libros en la biblioteca.');
    return;
  }

  print('Lista de libros:');
  for (int i = 0; i < libros.length; i++) {
    var libro = libros[i];
    print('Índice: $i');
    print('Título: ${libro['titulo']}');
    print('Autor: ${libro['autor']}');
    print('Año: ${libro['anio']}');
    print('---');
  }
}

void actualizarLibro(List<Map<String, dynamic>> libros) {
  if (libros.isEmpty) {
    print('No hay libros para actualizar.');
    return;
  }

  print('Ingrese el índice del libro a actualizar: ');
  String? indiceStr = stdin.readLineSync();
  int? indice;
  try {
    indice = int.parse(indiceStr!);
    if (indice < 0 || indice >= libros.length) {
      print('Error: Índice fuera de rango.');
      return;
    }
  } catch (e) {
    print('Error: El índice debe ser un número válido.');
    return;
  }

  var libro = libros[indice];

  print('Ingrese el nuevo título (deje vacío para mantener "${libro['titulo']}"): ');
  String? nuevoTitulo = stdin.readLineSync();
  if (nuevoTitulo != null && nuevoTitulo.isNotEmpty) {
    libro['titulo'] = nuevoTitulo;
  }

  print('Ingrese el nuevo autor (deje vacío para mantener "${libro['autor']}"): ');
  String? nuevoAutor = stdin.readLineSync();
  if (nuevoAutor != null && nuevoAutor.isNotEmpty) {
    libro['autor'] = nuevoAutor;
  }

  print('Ingrese el nuevo año (deje vacío para mantener ${libro['anio']}): ');
  String? nuevoAnioStr = stdin.readLineSync();
  if (nuevoAnioStr != null && nuevoAnioStr.isNotEmpty) {
    try {
      libro['anio'] = int.parse(nuevoAnioStr);
    } catch (e) {
      print('Error: Año inválido, se mantiene el anterior.');
    }
  }

  print('Libro actualizado exitosamente.');
}

void eliminarLibro(List<Map<String, dynamic>> libros) {
  if (libros.isEmpty) {
    print('No hay libros para eliminar.');
    return;
  }

  print('Ingrese el índice del libro a eliminar: ');
  String? indiceStr = stdin.readLineSync();
  int? indice;
  try {
    indice = int.parse(indiceStr!);
    if (indice < 0 || indice >= libros.length) {
      print('Error: Índice fuera de rango.');
      return;
    }
  } catch (e) {
    print('Error: El índice debe ser un número válido.');
    return;
  }

  libros.removeAt(indice);
  print('Libro eliminado exitosamente.');
}

void main() {
  List<Map<String, dynamic>> libros = [];
  bool seguirEjecutando = true;

  while (seguirEjecutando) {
    print('\n--- Menú de Gestión de Biblioteca ---');
    print('1. Agregar libro');
    print('2. Listar libros');
    print('3. Actualizar libro');
    print('4. Eliminar libro');
    print('5. Salir');
    print('Elige una opción: ');

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        agregarLibro(libros);
        break;
      case '2':
        listarLibros(libros);
        break;
      case '3':
        actualizarLibro(libros);
        break;
      case '4':
        eliminarLibro(libros);
        break;
      case '5':
        seguirEjecutando = false;
        print('Saliendo del programa...');
        break;
      default:
        print('Opción inválida. Intenta de nuevo.');
    }
  }
}