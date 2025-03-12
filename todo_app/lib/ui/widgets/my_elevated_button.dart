import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/static/static_colors.dart';
import 'package:todo_app/ui/widgets/my_text.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton(
      {super.key,
      required this.onpressed,
      required this.text,
      this.paddings = const [0, 0, 0, 0]});
  final VoidCallback onpressed;
  final List<double> paddings;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: paddings[0],
          right: paddings[1],
          top: paddings[2],
          bottom: paddings[3]),
      height: 60,
      child: Material(
        color: StaticColors.buttonColor,
        child: InkWell(
          onTap: onpressed,
          child: Center(
            child: MyText(
                text: text,
                textStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: StaticColors.buttonTextColor)),
          ),
        ),
      ),
    );
  }
}
