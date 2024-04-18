import 'package:flutter/material.dart';

class Budget extends StatefulWidget {
  const Budget({super.key});

  @override
  BudgetPageState createState() => BudgetPageState();
}

class BudgetPageState extends State<Budget> {
  String budget = '\$0.00'; // Valor inicial del presupuesto
  final TextEditingController controller = TextEditingController(); // Controlador para el TextField

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BUDGETTRACK',
            style: TextStyle(
                color: Color.fromARGB(255, 32, 57, 154),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Times New Roman')),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 10.0),
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
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                budget,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20), // Espacio entre el presupuesto y el botón
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Change Budget'),
                      content: TextField(
                        controller: controller,
                        keyboardType: TextInputType.number,
                      ),
                      actions: [
                        TextButton(
                          child: const Text('OK'),
                          onPressed: () {
                            setState(() {
                              budget = '\$${controller.text}';
                            });
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Change Budget'),
            ),
          ],
        ),
      ),
    );
  }
}