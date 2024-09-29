import 'package:flutter/material.dart';

void main() {
  runApp(const PlayerApp());
}

class PlayerApp extends StatefulWidget {
  const PlayerApp({super.key});

  @override
  State<PlayerApp> createState() => _PlayerAppState();
}

class _PlayerAppState extends State<PlayerApp> {
  int _counter = 0;
  List<String> playerList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKjOPOIx7HjlRFOToI_sPjihEtkm6mWlyfnQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI2ba8RTmg0fPtV6Rb5WunmiC_7R0vvA1xBA&s",
    "https://i.pinimg.com/736x/3a/93/5a/3a935a900442f2238ac61b50816465ab.jpg",
    "https://i.pinimg.com/236x/90/4c/ea/904ceaec11ff1532f836d4f03e64c200.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHVdRCwAYwyQccqq9VV2C9ZAPfoPNBJrConDVtlJaooPJZ-64zO5RcNznXHW_-6UXWfZE&usqp=CAU"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Player App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                playerList[_counter],
                height: 300,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (_counter < playerList.length - 1) {
                _counter++;
              } else {
                _counter = 0; // Reset to the first image if at the end
              }
            });
          },
          tooltip: "Next Image",
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}