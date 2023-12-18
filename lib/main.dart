import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title: const Text(
            'KCT102',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "english",
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Learning git is very fun',
            style: TextStyle(
              fontSize: 22.0,
              fontFamily: "kurdish",
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue[200],
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
