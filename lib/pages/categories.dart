import 'package:flutter/material.dart';
import 'package:kara_test/providers/home_provider.dart';
import 'package:provider/provider.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<HomeProvider>(context, listen: false).getCategories();

    return Scaffold(
      body: Center(
        child: Consumer<HomeProvider>(
          builder:
              (BuildContext context, HomeProvider provider, Widget? child) {
            return ListView.builder(
              itemCount: provider.categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(provider.categories[index].name ?? ""),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
