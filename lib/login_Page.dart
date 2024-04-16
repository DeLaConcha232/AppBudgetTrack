// login_page.dart
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'mainPage.dart'; // Importa esto para poder navegar a MainPage

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(100),
        child: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:const EdgeInsets.only(top: 10),
                child: Image.asset('assets/images/idiomas.png', fit: BoxFit.cover, width: 50, height: 50),
                ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/logotipo.png', width: 200, height: 200),
            Image.asset('assets/images/perfil.png', width: 100, height: 100),
            const SizedBox(height: 20),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 20.0), // Espacio horizontal de 20 píxeles
              child: TextFormField(
                decoration:const InputDecoration(
                  labelText: 'Usuario',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 20.0), // Espacio horizontal de 20 píxeles
              child: TextFormField(
                decoration:const InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50.0, // Altura del botón
              width: 200, // Ancho del botón
              child: ElevatedButton(
                child:const Text('Login'),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) =>const MainPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}