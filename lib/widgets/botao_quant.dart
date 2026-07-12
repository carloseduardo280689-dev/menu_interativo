import 'package:flutter/material.dart';

class BotaoQuant extends StatefulWidget {
  final ValueChanged<double> valueChanged;
  final ValueChanged<double> valorMudado;
  final double valorInicial;
  final double valorLanche;

  const BotaoQuant({required this.valueChanged, required this.valorMudado, this.valorInicial = 0, this.valorLanche = 0});

  @override
  State<BotaoQuant> createState() => _BotaoQuantState();
}

class _BotaoQuantState extends State<BotaoQuant> {
  late double _quant = 0;
  late double _valorParaSoma = 0;




  @override
  void initState() {
    super.initState();
    _quant = widget.valorInicial;
    _valorParaSoma = widget.valorLanche;
  }


  void _valorTotalCompra() {
    setState(() {
      _valorParaSoma = _valorParaSoma * _quant;
      widget.valorMudado(_valorParaSoma);
    });
  }

  void _increment() {
    setState(() {
      _quant++;
      widget.valueChanged(_quant);
    });
  }

  void _decrement() {
    setState(() {
      if (_quant > 0) {
        _quant--;
        widget.valueChanged(_quant);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            _decrement();
            _valorTotalCompra();
          },
          icon: Icon(Icons.remove_circle),
        ),

        Text(_quant.toString(), style: TextStyle(fontSize: 20)),

        IconButton(
          onPressed: () {
            _increment();
            _valorTotalCompra();
          },
          icon: Icon(Icons.add_circle),
        ),

        Text(_valorParaSoma.toString(), style: TextStyle(fontSize: 20)),
      ],
    );
  }
}
