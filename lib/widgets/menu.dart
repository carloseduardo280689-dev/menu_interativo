import 'package:flutter/material.dart';
import 'package:menu_interativo/constants/imgs.dart';
import 'package:menu_interativo/constants/nome_preco.dart';
import 'package:menu_interativo/widgets/botao_quant.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  double quantidade_lanches = 0;
  double valorDoLanche = 0;
  

  @override
  Widget build(BuildContext context) {
    return 
      
        Column(
          children: [

            for (int i = 0; i < nome_lanches.length; i++)
              
            Container(
              color: const Color.fromARGB(255, 136, 110, 110),
              height: 150,

              child: Row(
                
                children: [

                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      nome_lanches[i],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),

                  
                  Image(
                    image: AssetImage(lanches_img[i]["img"]),
                    fit: BoxFit.cover,
                    height: 150,
                    width: 150,
                  ),

                  BotaoQuant(
                    valorInicial:quantidade_lanches,
                    valorLanche: preco_lanches[i],
                     valueChanged: (newValue) {
                      setState(() {
                        quantidade_lanches = newValue;
                      });
                    },
                   
                   valorMudado: (somaValues) {
                    setState(() {
                      valorDoLanche = somaValues;
                    });
                   }
                  ),

                  Spacer(),

                  Column(

                    children: [
                      Text(descricao_lanches[i],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      
                      Text(
                        ingredientes_lanches[i],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),

                      Text(
                        "R\$ ${preco_lanches[i].toStringAsFixed(2)}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  
                ],
              ),
            )
          ],
        );
  }
}
