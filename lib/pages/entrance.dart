import 'package:flutter/material.dart';
import 'package:kara_test/pages/home.dart';
import 'package:kara_test/pages/login.dart';
import 'package:kara_test/pages/verify.dart';
import 'package:kara_test/providers/login_provider.dart';
import 'package:provider/provider.dart';

class Entrance extends StatelessWidget {
  const Entrance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<LoginProvider>(
          builder:
              (BuildContext context, LoginProvider provider, Widget? child) {
            if (provider.state == AutorizeState.unautorized) {
              return const Login();
            } else if (provider.state == AutorizeState.logged) {
              return const Verify();
            } else {
              return const Home();
            }
          },
        ),
      ),
    );
  }
}
