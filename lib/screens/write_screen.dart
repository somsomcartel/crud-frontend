import 'package:crud/widgets/comment_widget.dart';
import 'package:flutter/material.dart';

class WriteScreen extends StatelessWidget {
  const WriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CRUD"),
        centerTitle: true,
        elevation: 2,
        backgroundColor: Colors.cyan.shade100,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 50.0,
          vertical: 28.0,
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "제목을 입력해주세요.",
                    border: InputBorder.none,
                  ),
                ),
                const SizedBox(
                  width: double.infinity,
                  child: Divider(
                    color: Colors.black54,
                    thickness: 1.0,
                  ),
                ),
                const SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("myId"),
                      SizedBox(
                        width: 12.0,
                      ),
                      Text("2024-11-to"),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Column(
              children: [
                const TextField(
                  maxLines: 20,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8.0),
                    hintText: "글을 입력해주세요.",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black87,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black87,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    iconSize: 28,
                    onPressed: () {
                      print("saved!");
                    },
                    icon: const Icon(Icons.save_as_rounded),
                  ),
                ),
              ],
            ),
            const comment_widget()
          ],
        ),
      ),
    );
  }
}
