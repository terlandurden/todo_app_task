import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/static/static_colors.dart';
import 'package:todo_app/static/static_images.dart';
import 'package:todo_app/static/static_texts.dart';
import 'package:todo_app/ui/screens/main_screen.dart';
import 'package:todo_app/ui/screens/register_screen.dart';
import 'package:todo_app/ui/widgets/bottom_row.dart';
import 'package:todo_app/ui/widgets/my_elevated_button.dart';
import 'package:todo_app/ui/widgets/my_text.dart';
import 'package:todo_app/ui/widgets/my_text_field.dart';
import 'package:todo_app/ui/widgets/sizedbox.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StaticColors.scaffoldBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyText(
                text: StaticTexts.welcomeBack,
                textStyle: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w600)),
            MySizedBox(width: 0, height: 8),
            MyText(
                text: StaticTexts.letsHelp,
                textStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 13)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Image.asset(StaticImages.signInImage),
            ),
            MyTextField(
                paddings: [25, 25, 0, 0],
                hint: StaticTexts.registerMail,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icon(Icons.mail_rounded)),
            MySizedBox(width: 0, height: 24),
            MyTextField(
                paddings: [25, 25, 0, 0],
                hint: StaticTexts.registerPassword,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icon(Icons.lock_rounded)),
            MySizedBox(width: 0, height: 17),
            MyText(
                text: StaticTexts.forgetPassword,
                textStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: StaticColors.myRed)),
            MySizedBox(width: 0, height: 19),
            MyElevatedButton(
                paddings: [25, 25, 0, 0],
                onpressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainScreen()));
                },
                text: StaticTexts.login),
            MySizedBox(width: 0, height: 25),
            BottomRow(
                ontap: null,
                leftText: StaticTexts.dontHaveAnAccount,
                rightText: StaticTexts.signUp)
          ],
        ),
      ),
    );
  }
}
