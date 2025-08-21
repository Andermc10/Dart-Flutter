import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container( // Refactor para unir 2 widget en un solo 
          width: double.infinity,// Double infinity para que se adapte a la pantalla
          height: 80,
          color: const Color.fromARGB(255, 4, 14, 202), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('ApData',style: TextStyle(fontSize: 24, color: Colors.white),)// FonSize para la fuente del texto
            ],
          ),
        ),
        SizedBox(height: 30),// Es un widget para dejar un espacio entre los elementos
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, // Para dar espacio entre los elementos
          mainAxisSize: MainAxisSize.max,
          children: [   // El row necesita un children para poder meter containers 
            Container(width: 80, height: 80, color: Colors.black,),
            Container(width: 80, height: 80, color: Colors.grey,),
            Container(width: 80, height: 80, color: Colors.green,),
          ],
        ),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max, 
        children: [
          Container(width: 190, height: 120, color: Colors.black,),
          Container(width: 270, height: 120, color: Colors.grey,),
        ],  
        ),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max, 
        children: [
          Container(width: 100, height: 190, color: Colors.black,),
          Container(width: 100, height: 100, color: Colors.grey,),
          Container(width: 100, height: 190, color: Colors.grey,),
        ],  
        ),


      ],
    );
  }
}