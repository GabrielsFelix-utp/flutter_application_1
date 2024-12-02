import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/auth/Pages/cart/cart_tab.dart';
import 'package:flutter_application_1/src/auth/Pages/home/home_tab.dart';

class BaseScreen extends StatefulWidget {
  BaseScreen({super.key});
  final pageController = PageController();

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: widget.pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: [
           HomeTab(),
           CartTab(),
          Container(color: Colors.green),
          Container(color: Colors.purple),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            widget.pageController.jumpToPage(index);
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withAlpha(100),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Pedidos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
