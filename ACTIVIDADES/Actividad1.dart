import 'dart:io';
import 'dart:math';

void main() {
  bool salir = false;

  while (!salir) {
    print(" Elige una opción del siguiente menu:");
    print("Menu de ejercicios");
    print("1: Distancia MRU");
    print("2: Promedio notas");
    print("3: Puntos de futbol");
    print('4: Salario de empleado');
    print('5: Hipotenusa de triángulo');
    print('6: Celsius a Fahrenheit');
    print('7: Salir');

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        print("Ingrese la velocidad en m/s");
        double? v = double.tryParse(stdin.readLineSync() ?? '');
        print("Ingrese el tiempo en segundos");
        double? t = double.tryParse(stdin.readLineSync() ?? '');
        if (v != null && t != null) {
          print("La distancia recorrida es de ${v * t} metros\n");
        } else {
          print("Ingresa numeros validos\n");
        }
        break;

      case '2':
        print("Ingrese su primera nota parcial");
        double? n1 = double.tryParse(stdin.readLineSync() ?? '');
        print("Ingrese su segunda nota parcial");
        double? n2 = double.tryParse(stdin.readLineSync() ?? '');
        print("Ingrese su tercera nota parcial");
        double? n3 = double.tryParse(stdin.readLineSync() ?? '');

        if (n1 != null && n2 != null && n3 != null) {
          double promedio = (n1 + n2 + n3) / 3;
          print(
            'El promedio de notas del estudiantes es de: ${promedio.toStringAsFixed(2)}\n',
          );
        } else {
          print('Ingresa notas válidas');
        }
        break;

      case '3':
        print('\nCalcula puntos de fútbol');
        print('Partidos ganados: ');
        int? g = int.tryParse(stdin.readLineSync() ?? '');
        print('Partidos empatados: ');
        int? e = int.tryParse(stdin.readLineSync() ?? '');
        print('Partidos perdidos: ');
        int? p = int.tryParse(stdin.readLineSync() ?? '');
        if (g != null && e != null && p != null) {
          int puntos = g * 3 + e;
          print('Ganados: $g, Empatados: $e, Perdidos: $p');
          print('Puntos totales: $puntos\n');
        } else {
          print('Error: Ingresa números enteros');
        }
        break;

      case '4':
        print('Calcular salario de empleado');
        print('Nombre: ');
        String? nombre = stdin.readLineSync();
        print('Horas trabajadas: ');
        double? h = double.tryParse(stdin.readLineSync() ?? '');
        print('Tarifa por hora: ');
        double? t = double.tryParse(stdin.readLineSync() ?? '');
        if (nombre != null && h != null && t != null) {
          double salario = h * t;
          print(
            'Nombre: $nombre, Horas: $h, Salario: ${salario.toStringAsFixed(2)}\n',
          );
        } else {
          print('Error: Ingresa datos válidos');
        }
        break;

      case '5':
        print('\nCalcula hipotenusa (H = √(a² + b²))');
        print('Lado a: ');
        double? a = double.tryParse(stdin.readLineSync() ?? '');
        print('Lado b: ');
        double? b = double.tryParse(stdin.readLineSync() ?? '');
        if (a != null && b != null) {
          double hipotenusa = sqrt(pow(a, 2) + pow(b, 2));
          print('La hipotenusa es de: ${hipotenusa.toStringAsFixed(2)}\n');
        } else {
          print('Error: Ingresa números válidos');
        }
        break;

      case '6':
        print('\n Ingrese la temperatura en grados celsius \n');
        double? c = double.tryParse(stdin.readLineSync() ?? '');
        if (c != null) {
          double f = (c * 1.8) + 32;
          print("La temperatura en grados Farenheit es = $f°F");
        }
        break;

      case '7':
        salir = true;
        print('¡Adiós!');
        break;
    }
  }
}
