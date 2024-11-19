import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar
      appBar: AppBar(
        title: const Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 30,
            ),
            children: [
              TextSpan(text: 'Quitanda'),
              TextSpan(text: 'Virtual'),
            ],
          ),
        ),
      ),

      // Campo pesquisa

      //Categorias

      //Grid
    );
  }
}
