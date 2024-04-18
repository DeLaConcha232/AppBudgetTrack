
import 'package:flutter/material.dart';
import 'package:sqlite_flutter_crud/budget.dart';
import 'package:sqlite_flutter_crud/config.dart';
import 'package:sqlite_flutter_crud/expenses.dart';
import 'package:sqlite_flutter_crud/perfil.dart';

List<String> productos = ['Budget', 'Expenses'];

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 32, 57, 154),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/logotipo.png', width: 300, height: 300),
          Expanded(
            child: ListView.builder(
              itemCount: productos.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 100,
                  height: 100,
                  child: Card(
                    child: Center(child: Text(productos[index])),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 50.0, // Altura del botón
            width: 300, // Ancho del botón
          child: ElevatedButton(
            onPressed: () {
              // Código para ejecutar cuando se presiona el botón
            },
            child: const Text('Intelligent Performance', style: TextStyle(fontSize: 15)),
          ),
          ),
          // const HtmlWidget ("""
          //   <div>
          //     <h1>Intelligent Performance</h1>
          //     <p>Intelligent Performance is a new way to think about the performance of your applications. It is a way to make your applications run faster and more efficiently. It is a way to make your applications more reliable and more secure. It is a way to make your applications more scalable and more flexible </p>
          //   </div>
          //   """),
          const SizedBox(height: 200),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 150,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Image.asset(
                  'assets/images/logotipo-SinFondo.png',
                  fit: BoxFit.cover,
                ),
                // const Text('Menu', style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontFamily: 'Roboto')),
              ),
            ),
            ListTile(
              leading: Image.asset('assets/images/saldo-de-gastos.png',
                  width: 50, height: 50),
              title: const Text('Saldo'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>const Budget()),
                );
              },
              subtitle: const Text('Ingresos y Egresos',
                  style: TextStyle(fontSize: 10)),
            ),
            ListTile(
              leading: Image.asset('assets/images/gastos_negro.png',
                  width: 50, height: 50),
              title: const Text('Gastos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Expenses()),
                );
              },
              subtitle: const Text('Apartados y Categorias',
                  style: TextStyle(fontSize: 10)),
            ),
            ListTile(
              leading: Image.asset('assets/images/perfil-negro.png',
                  width: 50, height: 50),
              title: const Text('Perfil'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>const  ProfileScreen()),
                );
              },
              subtitle:
                  const Text('Usuario, Correo', style: TextStyle(fontSize: 10)),
            ),
            ListTile(
              leading: Image.asset('assets/images/config.png',
                  width: 50, height: 50),
              title: const Text('Configuracion'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>const Config()),
                );
              },
              subtitle: const Text('Divisa, Tema, Idioma/Region',
                  style: TextStyle(fontSize: 10)),
            ),
          ],
        ),
      ),
    );
  }
}