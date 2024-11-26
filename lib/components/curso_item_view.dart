import 'package:escola/entidades/curso.dart';
import 'package:flutter/material.dart';

class CursoItemView extends StatelessWidget {
  final Curso curso;
  final ValueChanged<int> onDelete;

  const CursoItemView({
    super.key,
    required this.curso,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);

    return Container(
      margin: const EdgeInsets.only(bottom: 4),
      padding: const EdgeInsets.all(3),
      child: Material(
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    curso.nome,
                    style: tema.textTheme.titleMedium,
                  ),
                  Text(
                    curso.periodo.description,
                    style: tema.textTheme.bodySmall,
                  )
                ],
              ),
              PopupMenuButton<int>(onSelected: (value) {
                if (value == 0) {
                  onDelete(curso.id);
                }
              }, itemBuilder: (context) {
                return <PopupMenuEntry<int>>[
                  const PopupMenuItem(
                    value: 0,
                    child: Text("Excluir"),
                  ),
                ];
              }),
            ],
          ),
        ),
      ),
    );
  }
}
