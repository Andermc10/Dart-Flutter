import 'dart:io';

void agregarProducto(List<Map<String, dynamic>> productos) { //Función para agregar producto
  String? nombre;
  do {
    print('Ingrese el nombre del producto: ');
    nombre = stdin.readLineSync();
    if (nombre == null || nombre.isEmpty) {
      print('Error: El nombre no puede estar vacío. Intente de nuevo.');
    }
  } while (nombre == null || nombre.isEmpty);

  double? precio;
  do {
    print('Ingrese el precio: ');
    String? precioStr = stdin.readLineSync();
    try {
      precio = double.parse(precioStr!);
      if (precio < 0) {
        print('Error: El precio no puede ser negativo. Intente de nuevo.');
        precio = null; 
      }
    } catch (e) {
      print('Error: El precio debe ser un número válido. Intente de nuevo.');
    }
  } while (precio == null);

  int? cantidad;
  do {
    print('Ingrese la cantidad disponible: ');
    String? cantidadStr = stdin.readLineSync();
    try {
      cantidad = int.parse(cantidadStr!);
      if (cantidad < 0) {
        print('Error: La cantidad no puede ser negativa. Intente de nuevo.');
        cantidad = null;
      }
    } catch (e) {
      print('Error: La cantidad debe ser un número entero válido. Intente de nuevo.');
    }
  } while (cantidad == null);

  Map<String, dynamic> producto = {
    'nombre': nombre,
    'precio': precio,
    'cantidad': cantidad,
  };

  productos.add(producto);
  print('Producto agregado exitosamente.');
}

void listarProductos(List<Map<String, dynamic>> productos) {
  if (productos.isEmpty) {
    print('No hay productos en el inventario.');
    return;
  }

  print('Lista de productos:');
  for (int i = 0; i < productos.length; i++) {
    var producto = productos[i];
    print('Índice: $i');
    print('Nombre: ${producto['nombre']}');
    print('Precio: ${producto['precio']}');
    print('Cantidad: ${producto['cantidad']}');
    print('---');
  }
}

void actualizarProducto(List<Map<String, dynamic>> productos) { // Función para actualizar producto 
  if (productos.isEmpty) {
    print('No hay productos para actualizar.');
    return;
  }

  print('Ingrese el índice del producto a actualizar: ');
  String? indiceStr = stdin.readLineSync();
  int? indice;
  try {
    indice = int.parse(indiceStr!);
    if (indice < 0 || indice >= productos.length) {
      print('Error: Índice fuera de rango.');

      return;
    }
  } catch (e) {
    print('Error: El índice debe ser un número válido.');
    return;
  }

  var producto = productos[indice];

  String? nuevoNombre;
  do {
    print('Ingrese el nuevo nombre (deje vacío para mantener "${producto['nombre']}"): ');
    nuevoNombre = stdin.readLineSync();
    if (nuevoNombre != null && nuevoNombre.isNotEmpty) {
      break; 
    }
    
  } while (false); 

  if (nuevoNombre != null && nuevoNombre.isNotEmpty) {
    producto['nombre'] = nuevoNombre;
  }

  double? nuevoPrecio;
  do {
    print('Ingrese el nuevo precio (deje vacío para mantener ${producto['precio']}): ');
    String? nuevoPrecioStr = stdin.readLineSync();
    if (nuevoPrecioStr == null || nuevoPrecioStr.isEmpty) {
      nuevoPrecio = producto['precio']; 
      break;
    }
    try {
      nuevoPrecio = double.parse(nuevoPrecioStr);
      if (nuevoPrecio < 0) {
        print('Error: El precio no puede ser negativo. Intente de nuevo.');
        nuevoPrecio = null;
      }
    } catch (e) {
      print('Error: Precio inválido. Intente de nuevo.');
    }
  } while (nuevoPrecio == null);

  if (nuevoPrecio != null) {
    producto['precio'] = nuevoPrecio;
  }

  int? nuevaCantidad;
  do {
    print('Ingrese la nueva cantidad (deje vacío para mantener ${producto['cantidad']}): ');
    String? nuevaCantidadStr = stdin.readLineSync();
    if (nuevaCantidadStr == null || nuevaCantidadStr.isEmpty) {
      nuevaCantidad = producto['cantidad']; 
      break;
    }
    try {
      nuevaCantidad = int.parse(nuevaCantidadStr);
      if (nuevaCantidad < 0) {
        print('Error: La cantidad no puede ser negativa. Intente de nuevo.');
        nuevaCantidad = null;
      }
    } catch (e) {
      print('Error: Cantidad inválida. Intente de nuevo.');
    }
  } while (nuevaCantidad == null);

  if (nuevaCantidad != null) {
    producto['cantidad'] = nuevaCantidad;
  }

  print('Producto actualizado exitosamente.');
}

void eliminarProducto(List<Map<String, dynamic>> productos) {
  if (productos.isEmpty) {
    print('No hay productos para eliminar.');
    return;
  }

  print('Ingrese el índice del producto a eliminar: ');
  String? indiceStr = stdin.readLineSync();
  int? indice;
  try {
    indice = int.parse(indiceStr!);
    if (indice < 0 || indice >= productos.length) {
      print('Error: Índice fuera de rango.');
      return;
    }
  } catch (e) {
    print('Error: El índice debe ser un número válido.');
    return;
  }

  productos.removeAt(indice);
  print('\n Producto eliminado exitosamente.');
}

void main() {
  List<Map<String, dynamic>> productos = [];
  bool seguirEjecutando = true;

  while (seguirEjecutando) {
    print('\n--- Menú de Gestión de Productos ---');
    print('1. Agregar producto');
    print('2. Listar productos');
    print('3. Actualizar producto');
    print('4. Eliminar producto');
    print('5. Salir');
    print('\n Elige una opción: ');

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        agregarProducto(productos);
        break;
      case '2':
        listarProductos(productos);
        break;
      case '3':
        actualizarProducto(productos);
        break;
      case '4':
        eliminarProducto(productos);
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