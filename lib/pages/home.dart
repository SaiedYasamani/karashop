import 'package:flutter/material.dart';
import 'package:kara_test/pages/categories.dart';
import 'package:kara_test/pages/products.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Widget currentPage;
  int currentIndex = -1;

  @override
  void initState() {
    super.initState();
    currentPage = const Products();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    switch (currentIndex) {
      case 0:
        currentPage = const Products();
        break;
      case 1:
        currentPage = const Categories();
        break;
      default:
    }

    return Scaffold(
      body: SizedBox.expand(child: currentPage),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Products"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Categories"),
        ],
      ),
    );
  }
}
