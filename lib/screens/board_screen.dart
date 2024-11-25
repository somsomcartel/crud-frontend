import 'package:crud/screens/write_screen.dart';
import 'package:crud/widgets/article_widget.dart';
import 'package:flutter/material.dart';

class BoardScreen extends StatelessWidget {
  const BoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 50.0,
          vertical: 18.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Board",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WriteScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.text_increase_rounded))
              ],
            ),
            const Column(
              children: [
                article_widget(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
