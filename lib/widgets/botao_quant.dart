import 'package:flutter/material.dart';

class BotaoQuant extends StatefulWidget {
  final double valorInicial;

  final ValueChanged<double> onChanged;

  const BotaoQuant({
    super.key,
    
    this.valorInicial = 0,
    required this.onChanged, 
    
  });

  @override
  State<BotaoQuant> createState() => _BotaoQuantState();
}

class _BotaoQuantState extends State<BotaoQuant> {
  late double _valorAtual;
  


  @override
  void initState() {
    super.initState();
    _valorAtual = widget.valorInicial;
    
  }

  void _decrementar() {
    setState((){
      if (_valorAtual > 0) {
        _valorAtual--;
        widget.onChanged(_valorAtual);
        
      }
    });
  }

  void _incrementar() {
    setState((){
      _valorAtual++;
      widget.onChanged(_valorAtual);
      
    });
  }

  @override
  Widget build(BuildContext context) {
    

    return Row(
      children: [
        

        IconButton(
          onPressed: _decrementar,
          icon: Icon(Icons.remove_circle_outline),
        ),

        Text(
          (_valorAtual).toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),

        IconButton(
          onPressed: _incrementar,
          icon: Icon(Icons.add_circle_outline),
        ),
      ],

      
      

    );
  }
}