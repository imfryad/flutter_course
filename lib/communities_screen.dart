import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CommunitiesScreen extends StatelessWidget {
  const CommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Communities"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Navigation is Awesome',
              style: TextStyle(
                fontSize: 28.0,
                fontFamily: "english",
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                  onPressed: () {
                    context.goNamed('ProfileScreen');
                  },
                  child: const Text('Go to your Profile')),
            )
          ],
        ),
      ),
    );
  }
}
