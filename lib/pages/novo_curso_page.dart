import 'package:escola/components/select_periodo.dart';
import 'package:escola/entidades/periodo.dart';
import 'package:flutter/material.dart';

class NovoCursoPage extends StatefulWidget {
  const NovoCursoPage({super.key});

  @override
  State<NovoCursoPage> createState() => _NovoCursoPageState();
}

class _NovoCursoPageState extends State<NovoCursoPage> {
    Periodo periodo = Periodo.manha;
  final nomeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Novo Curos"),
        backgroundColor: tema.colorScheme.inversePrimary,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nomeController,
                decoration: const InputDecoration(
                  labelText: "Nome",
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SelectPeriodo(
                onChange: onPeriodoChanged,
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Salvar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void onPeriodoChanged(Periodo value){
    setState(() {
      periodo = value;
    });
  }
}
