import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText(
      {super.key,
      required this.text,
      required this.textStyle,
      this.paddings = const [0, 0, 0, 0],
      this.textAlign = TextAlign.center});
  final String text;
  final TextStyle textStyle;
  final TextAlign textAlign;
  final List<double> paddings;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: paddings[0],
          right: paddings[1],
          top: paddings[2],
          bottom: paddings[3]),
      child: Text(
        text,
        textAlign: textAlign,
        style: textStyle,
      ),
    );
  }
}
