import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizedText extends StatelessWidget {
  final String text;
  final Color color;

  const SizedText({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    final Size textSize = _textSize(text, context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: color,
            fontWeight: FontWeight.w700,
          ),
          maxLines: 1,
          softWrap: false,
          overflow: TextOverflow.clip,
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            for (int i = 0; i < textSize.width / 5; i++)
              i.isEven
                  ? Container(
                width: 5,
                color: color,
                height: 2,
              )
                  : Container(
                width: 5,
                color: Colors.white,
                height: 2,
              ),
          ],
        ),
      ],
    );
  }

  /// Helper Function to Calculate Text Size
  Size _textSize(String text, BuildContext context) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: TextStyle(
          fontSize: 16,
          color: color,
          fontWeight: FontWeight.w700,
        ),
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: MediaQuery.of(context).size.width);

    return textPainter.size;
  }
}
