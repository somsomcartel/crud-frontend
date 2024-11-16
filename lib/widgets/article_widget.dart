import 'package:flutter/material.dart';

class article_widget extends StatelessWidget {
  const article_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4.0, right: 4.0, top: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("001"),
              const Text("글 제목 예시 1번입니다."),
              Row(
                children: [
                  const Text(
                    "writerId01",
                    style: TextStyle(color: Colors.black87),
                  ),
                  Container(
                    width: 10,
                  ),
                  const Text(
                    "2024-11-23",
                    style: TextStyle(color: Colors.black87),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          width: double.infinity,
          child: Divider(
            color: Colors.black45,
            thickness: 1.0,
          ),
        )
      ],
    );
  }
}
