import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/static/static_colors.dart';
import 'package:todo_app/static/static_images.dart';
import 'package:todo_app/static/static_texts.dart';
import 'package:todo_app/ui/screens/register_screen.dart';
import 'package:todo_app/ui/widgets/my_elevated_button.dart';
import 'package:todo_app/ui/widgets/my_text.dart';
import 'package:todo_app/ui/widgets/sizedbox.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: StaticColors.scaffoldBackground,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(StaticImages.homneScreenImage),
              MySizedBox(width: 0, height: 68),
              MyText(
                  paddings: [53, 53, 0, 0],
                  text: StaticTexts.homeScreenHeadline,
                  textStyle: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w600)),
              MySizedBox(width: 0, height: 15),
              MyText(
                  paddings: [53, 53, 0, 0],
                  text: StaticTexts.homeScreenDescription,
                  textStyle: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  )),
              MySizedBox(width: 0, height: 60),
              MyElevatedButton(
                  paddings: [25, 25, 0, 0],
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ));
                  },
                  text: StaticTexts.getStarted)
            ],
          ),
        ));
  }
}
