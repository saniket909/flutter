import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(" Indian Flag "),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 480,
                width: 5,
                color: Colors.black,
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 155,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    color: Colors.orange,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    color: Colors.white,
                    child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQwgNtoF6hBeavlbQu7z5RVkKuoodQki4oVA&s"),
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    color: Colors.green,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
