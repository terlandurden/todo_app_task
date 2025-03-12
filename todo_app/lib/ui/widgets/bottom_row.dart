import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/static/static_colors.dart';
import 'package:todo_app/ui/widgets/my_text.dart';
import 'package:todo_app/ui/widgets/sizedbox.dart';

class BottomRow extends StatelessWidget {
  const BottomRow(
      {super.key,
      required this.leftText,
      required this.rightText,
      required this.ontap});
  final String leftText;
  final String rightText;
  final Future<dynamic>? ontap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyText(
            text: leftText,
            textStyle:
                GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14)),
        MySizedBox(width: 5, height: 0),
        InkWell(
          onTap: () {
            ontap;
          },
          child: MyText(
              text: rightText,
              textStyle: GoogleFonts.poppins(
                  color: StaticColors.myRed,
                  fontWeight: FontWeight.w600,
                  fontSize: 14)),
        )
      ],
    );
  }
}
