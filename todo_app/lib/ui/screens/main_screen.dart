import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/static/static_colors.dart';
import 'package:todo_app/static/static_images.dart';
import 'package:todo_app/static/static_texts.dart';
import 'package:todo_app/ui/widgets/my_text.dart';
import 'package:todo_app/ui/widgets/sizedbox.dart';
import 'package:todo_app/ui/widgets/tasks_card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StaticColors.scaffoldBackground,
      body: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1,
              height: MediaQuery.of(context).size.height / 3,
              color: StaticColors.myRed,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(StaticImages.profilePhoto),
                    radius: MediaQuery.of(context).size.height / 15,
                  ),
                  MySizedBox(width: 0, height: 24),
                  MyText(
                      text: StaticTexts.welcomeOlivaGrace,
                      textStyle: GoogleFonts.poppins(
                          color: StaticColors.buttonTextColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 14)),
                  MySizedBox(width: 0, height: 12)
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              color: StaticColors.transparent,
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1,
                    child: MyText(
                        paddings: [0, 25, 11, 0],
                        textAlign: TextAlign.end,
                        text: StaticTexts.goodAfternoon,
                        textStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: StaticColors.myblack)),
                  ),
                  MySizedBox(width: 0, height: 23),
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.height / 10,
                    backgroundColor: StaticColors.transparent,
                    backgroundImage: AssetImage(StaticImages.clock),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1,
                    child: MyText(
                        paddings: [24, 0, 8, 15],
                        textAlign: TextAlign.start,
                        text: StaticTexts.tasksList,
                        textStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: StaticColors.myblack)),
                  ),
                  TasksCard()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
