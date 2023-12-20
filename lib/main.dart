import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.deepPurple[50]),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
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
        // 1:5:00 lesson-2 , Row and Column
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            //row and columns have children, it can take many widgets
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.auto_awesome_rounded,
                size: 50.0,
                color: Colors.deepPurple,
              ),
              Text(
                'Learning git is very fun',
                style: TextStyle(
                  fontSize: 28.0,
                  fontFamily: "english",
                  fontWeight: FontWeight.w600,
                ),
              ),
              NewPage(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurple[500],
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Today i learned how to ceate statelesswidget and use my class inside my app',
      style: TextStyle(fontSize: 22.0),
    );
  }
}
