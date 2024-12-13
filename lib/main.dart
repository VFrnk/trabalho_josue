import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Inicial'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Fundadores'),
                  content: const Text(
                    'Josué Costa\nMaria Eduarda Corumba\nKeferson Nunes',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Fechar'),
                    ),
                  ],
                ),
              );
            },
            itemBuilder: (context) => [
              const PopupMenuItem<String>(
                value: 'fundadores',
                child: Text('Ver Fundadores'),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffeead2d), // Cor do botão
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondaryScreen()),
                );
              },
              child: const Text('Ir para Tela Secundária'),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                // Ação para Notas Favoritas
                print('Notas Favoritas pressionadas');
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  color: const Color(0xffeead2d), // Cor do container
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Notas Favoritas',
                  style: TextStyle(color: Colors.white), // Texto branco
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                // Ação para Lembretes
                print('Lembretes pressionados');
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  color: const Color(0xffeead2d), // Cor do container
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Lembretes',
                  style: TextStyle(color: Colors.white), // Texto branco
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: const SideDrawer(), // Adicione o SideDrawer aqui
    );
  }
}

class SecondaryScreen extends StatelessWidget {
  const SecondaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Secundária'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: Text('Conteúdo da Tela Secundária'),
      ),
    );
  }
}

class MemberInfoScreen extends StatelessWidget {
  const MemberInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informações do Grupo'),
      ),
      body: const Center(
        child: Text('os doidinhos do grupo'),
      ),
    );
  }
}

class TaskManagerScreen extends StatelessWidget {
  const TaskManagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gerenciador de Tarefas'),
      ),
      body: const Center(
        child: Text('tuas tarefas alma seboza'),
      ),
    );
  }
}

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          const Text(
            'Membros:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text('Josué Costa o mais gostoso do Ifpi', style: TextStyle(color: Color(0xffeead2d))),
          const Text('Maria Eduarda Corumba', style: TextStyle(color: Color(0xffeead2d))),
          const Text('Keferson Nunes', style: TextStyle(color: Color(0xffeead2d))),
          const SizedBox(height: 20),
          const Text(
            'Resumo da Aplicação:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'Esta aplicação é um gerenciador de tarefas simples com funcionalidades para notas e lembretes. '
                'Os usuários podem navegar entre as telas e visualizar informações sobre os membros do grupo.',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}

// Classe para leitura de dados de um arquivo
class DataReader {
  static Future<Map<String, dynamic>> readDataFromFile(String filePath) async {
    // Lógica para ler dados de um arquivo (ex: JSON)
    // Retornar os dados como um mapa
    return {'key': 'value'};
  }
}