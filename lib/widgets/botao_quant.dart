import 'package:flutter/material.dart';

class BotaoQuant extends StatefulWidget {
  
  final ValueChanged<double> valueChanged;
  final double valorInicial;

  const BotaoQuant({
    required this.valueChanged,
    this.valorInicial = 0,
  });

  @override
  State<BotaoQuant> createState() => _BotaoQuantState();
}

class _BotaoQuantState extends State<BotaoQuant> {
  late double _quant = 0;

  void initState() {
    super.initState();
    _quant = widget.valorInicial;
  }


  void _increment() {
    setState(() {
      _quant++;
    });
    widget.valueChanged(_quant);
  }

  void _decrement() {
    setState(() {
      if (_quant > 0) {
        _quant--;

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: _decrement,
          icon: Icon(Icons.remove_circle),
        ),


        Text(
          _quant.toString(),
          style: TextStyle(fontSize: 20),
        ),


        IconButton(
          onPressed: _increment,
          icon: Icon(Icons.add_circle),
        ),
      ],
    );
  }
}

