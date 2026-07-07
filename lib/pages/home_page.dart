import 'package:flutter/material.dart';
import 'package:menu_interativo/widgets/menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  Image(
                    image: AssetImage('wallpaper.jpg'),
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
                ],
              ),

              Menu(),
              
            ],
          ),
        );
      },
    );
  }
}
