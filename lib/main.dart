import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'router/go_router.dart';

void main() {
  runApp(
    MaterialApp.router(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.deepPurple[50], useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: Column(
        //row and columns have children, it can take many widgets
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Icon(
              Icons.auto_awesome_rounded,
              size: 50.0,
              color: Colors.deepPurple,
            ),
          ),
          const Center(
            child: Text(
              'Learning git is very fun',
              style: TextStyle(
                fontSize: 28.0,
                fontFamily: "english",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  context.goNamed('CommunitiesScreen',
                      pathParameters: {'id': '1'});
                },
                child: const Text("Go to Communities"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
