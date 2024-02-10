
import 'package:crypto_final/Presentations/state_holders/ui/screens/cart_screen.dart';
import 'package:crypto_final/Presentations/state_holders/ui/screens/category_screen.dart';
import 'package:crypto_final/Presentations/state_holders/ui/screens/home_screen.dart';
import 'package:crypto_final/Presentations/state_holders/ui/screens/wishlist_screen.dart';
import 'package:flutter/material.dart';


class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {

  int _selectedIndex=0;
  final List<Widget> _screens= const[
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    WishlistScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index){
          _selectedIndex=index;
          if (mounted){
            setState(() {});
          }
        },
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label:'Carts' ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline),label:'Wishlist'),

        ]
      ),
    );
  }
}
