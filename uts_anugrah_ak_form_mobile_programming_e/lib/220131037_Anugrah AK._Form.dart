import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halaman Form Pendaftaran',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Pendaftaran'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text('Nama Lengkap'),
              const SizedBox(
                height: 1,
              ),
              TextField(
                controller: namaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Harap memasukkan Nama Lengkap Anda!',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Email'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Harap memasukkan Email Anda!',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Password'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:
                      'Harap memasukkan Password Anda! (Minimal 18 Karakter)',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print(namaController.text);
                  print(emailController.text);
                  print(passwordController.text);
                },
                child: Text(
                  'Daftar',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
