import 'package:flutter/material.dart';

class comment_widget extends StatelessWidget {
  const comment_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4.0, right: 4.0, top: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        ),
        const Text(
          "comment 내용입니다.",
          style: TextStyle(
              // 코멘트 본문 스타일 적용 필요 시 적용
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
