import 'package:flutter/material.dart';
import 'package:kara_test/providers/login_provider.dart';
import 'package:provider/provider.dart';

class Verify extends StatelessWidget {
  const Verify({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController codeController = TextEditingController();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  height: 100, child: Image.asset('assets/images/shop.png')),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: codeController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        hintText: "Verify Code",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple))),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                Consumer<LoginProvider>(
                  builder: (BuildContext context, LoginProvider provider,
                      Widget? child) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () => {
                            provider.verify(provider.phone, codeController.text)
                          },
                          style: ButtonStyle(
                            textStyle: WidgetStateProperty.all<TextStyle>(
                                const TextStyle(color: Colors.white)),
                            backgroundColor:
                                WidgetStateProperty.all(Colors.purple),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          child: const Text(
                            "Verify",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Kara Ertebat Shop",
                style: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
