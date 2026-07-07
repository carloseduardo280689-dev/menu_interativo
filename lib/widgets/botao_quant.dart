import 'package:flutter/material.dart';

class BotaoQuant extends StatelessWidget {
  const BotaoQuant({super.key});
  int quantidade = 0;

  BotaoQuant({super.key, required this.quantidade});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            quantidade++;
          },
          icon:  Icon(Icons.remove),
        ),
      ],
    );
  }
}