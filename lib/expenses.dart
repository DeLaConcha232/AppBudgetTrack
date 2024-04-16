import 'package:flutter/material.dart';
import 'package:sqlite_flutter_crud/entertainment.dart';
import 'package:sqlite_flutter_crud/fixed_expenses.dart';
import 'package:sqlite_flutter_crud/Transport.dart';


class Expenses extends StatelessWidget {
  const Expenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BUTGETTRACK',
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
      body: Center(
        child: Container(
          padding:const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 20), // Espacio en la parte superior (20 píxeles
              Image.asset('assets/images/gastos.png', width: 100, height: 100),
              const SizedBox(height: 10), // Espacio en la parte superior (20 píxeles
              const Text(
                'EXPENSES',
                style: TextStyle(
                  fontSize: 50, // Tamaño de fuente grande
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0,
                      0), // Color de texto que contrasta con el fondo azul
                ),
                textAlign: TextAlign.center, // Centra el texto
              ),
              const Text(
                'CATEGORIES',
                style: TextStyle(
                  fontSize: 30, // Tamaño de fuente
                  color: Color.fromARGB(255, 0, 0, 0), // Color de texto
                ),
                textAlign: TextAlign.center, // Centra el texto
              ),
              const SizedBox(height: 70), // Espacio entre el título y los botones
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>const Entertainment()),
                    );
                  },
                  child:const Text('ENTERNTAINMENT'),
                ),
              ),
              const SizedBox(height: 40), // Espacio entre botones
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Transport()),
                    );
                  },
                  child:const Text('TRANSPORT'),
                ),
              ),
              const SizedBox(height: 40), // Espacio entre botones
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>const Fixed_expenses()),
                    );
                  },
                  child:const Text('FIXED EXPENSES'),
                ),
              ),
              // Resto de tus widgets van aquí
            ],
          ),
        ),
      ),
    );
  }
}
