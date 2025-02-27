import 'package:escola/pages/hame_page.dart';
import 'package:escola/pages/novo_curso_page.dart';
import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Escola",
      routes: {
        "/": (_) => const HomePage(),
        "/novo-curso": (_) => const NovoCursoPage(),
      },
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
    );
  }
}
