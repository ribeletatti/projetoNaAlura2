import 'package:estudos/components/task.dart';
import 'package:flutter/material.dart';

import 'form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Task(
              'Arender flutter',
              'https://docs.flutter.dev/assets/images/dash/early-dash-sketches5.jpg',
              5),
          const Task(
              'Meditar',
              'https://img.freepik.com/vetores-gratis/mulher-relaxada-meditando_23-2148525630.jpg?w=2000',
              3),
          const Task(
            'Cozinhar',
            'https://img.cybercook.com.br/publicidades/cozinha-1.jpeg?w=623&fit=crop?w=623&fit=crop',
            4,
          ),
          const SizedBox(
            height: 80,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
