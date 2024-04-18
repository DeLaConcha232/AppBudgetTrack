import 'package:flutter/material.dart';

class Config extends StatelessWidget {
  const Config({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        key: scaffoldkey,
        backgroundColor: Colors.white,
        appBar: _buildTopSection(context),
        body: Column(
          children: [
            _buildMiddleSection(),
            _buildBottomSection(),
          ],
        ),
      ),
    );
  }
}

_buildTopSection(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon:const Icon(Icons.arrow_back),
      onPressed: () => Navigator.pop(context),
    ),
    title:const DefaultTextStyle(
      style: TextStyle(
        fontSize: 25,
        color: Color.fromARGB(255, 253, 253, 253),
        fontWeight: FontWeight.bold,
        fontFamily: 'Times New Roman',
      ),
      child: Text('BUDGETTRACK'),
    ),
    centerTitle: true,
    backgroundColor: const Color.fromARGB(255, 32, 57, 154),
  );
}

Widget _buildMiddleSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const SizedBox(height: 40), // Agrega un espacio entre el título y la imagen
      Image.asset('assets/images/configuraciones.png', width: 80, height: 80),
      const SizedBox(height: 20),
      const Text('CURRENCY',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
      SizedBox(
        width: 300,
        height: 50,
        child: DropdownButtonFormField(
          hint:const Text('Select Currency'),
          items: listaDeOpciones.map((e) {
            return DropdownMenuItem(
              value: e,
              child: SizedBox(
                width: 100,
                child: Text(
                  e,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          }).toList(),
          onChanged: (void value) {},
          isDense: true,
          isExpanded: true,
        ),
      ),
      const SizedBox(
        height: 40,
      ),
      const Text('LANGUAGE',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
      SizedBox(
        width: 300,
        height: 50,
        child: DropdownButtonFormField(
          hint:const Text('Select language'),
          items: listaDeidiomas.map((e) {
            return DropdownMenuItem(
              value: e,
              child: SizedBox(
                width: 100,
                child: Text(
                  e,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          }).toList(),
          onChanged: (void value) {},
          isDense: true,
          isExpanded: true,
        ),
      ),

      const SizedBox(height: 50), // Agrega un espacio entre los dropdowns y el botón
      SizedBox(
        width: 200,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            // Lógica para activar/desactivar el modo oscuro
          },
          child: const Text("Modo oscuro"),
        ),
      ),
      const SizedBox(height: 185),
      const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.phone),
          SizedBox(width: 20), // Agrega un espacio entre los iconos
          Icon(Icons.mail),
        ],
      ),
    ],
  );
} //middlesection

Widget _buildBottomSection() {
  return const Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      SizedBox(
        height: 20,
      ),
      Text('BudgetTrack'),
      SizedBox(height: 8.0),
      Text('Versión 1.0'),
    ],
  );
}

List<String> listaDeOpciones = <String>[
  "Pesos",
  "Dolares",
  "Euros",
  "Soles",
  "Yen",
  "Libras"
];
List<String> listaDeidiomas = <String>[
  "Español",
  "English"
];
