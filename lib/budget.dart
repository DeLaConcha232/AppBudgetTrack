import 'package:flutter/material.dart';

class Budget extends StatelessWidget {
  const Budget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BUDGETTRACK',
            style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 32, 57, 154),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Times New Roman')),
        actions: <Widget>[
          Padding(
            padding:const EdgeInsets.only(right: 20.0, top: 10.0),
            child: GestureDetector(
              onTap: () {},
              child: Image.asset('assets/images/perfil.png',
                  width: 50, height: 50),
            ),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo-Gastos.png',
                width: 100, height: 100),
            const Text(
              'BUDGET',
              style: TextStyle(
                fontSize: 50, // Tamaño de fuente grande
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
                height: 20), // Espacio entre el título y la cifra de dinero
            Container(
              padding:
                  const EdgeInsets.all(10.0), // Espacio entre el borde y el texto
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 2), // Borde negro de 2 píxeles de ancho
                borderRadius: BorderRadius.circular(10),
              ),
              child:const Text(
                '\$1000.00', // Cifra de dinero
                style: TextStyle(
                  fontSize: 30, // Tamaño de fuente
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 50), // Espacio entre la cifra de dinero y el botón
            SizedBox(
              height: 50.0, // Altura del botón
              width: 200, // Ancho del botón
              child: ElevatedButton(
                onPressed: () {
                  // Código para modificar el valor del texto
                },
                child:const Text('Change Budget'),
              ),
            ),
            const SizedBox(height: 20), // Espacio en la parte inferior
          ],
        ),
      ),
    );
  }
}
