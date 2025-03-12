import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/static/static_colors.dart';
import 'package:todo_app/static/static_texts.dart';
import 'package:todo_app/ui/screens/sign_in_page.dart';
import 'package:todo_app/ui/widgets/bottom_row.dart';
import 'package:todo_app/ui/widgets/my_elevated_button.dart';
import 'package:todo_app/ui/widgets/my_text.dart';
import 'package:todo_app/ui/widgets/my_text_field.dart';
import 'package:todo_app/ui/widgets/sizedbox.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StaticColors.scaffoldBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //headline text
            MyText(
                text: StaticTexts.welcomeOnBoard,
                textStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 18)),
            MyText(
                text: StaticTexts.letsHelp,
                textStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 13)),
            MySizedBox(width: 0, height: 70),
            //full name textfield
            MyTextField(
              paddings: [25, 25, 0, 0],
              hint: StaticTexts.registerFullName,
              keyboardType: TextInputType.text,
              prefixIcon: Icon(Icons.account_box_rounded),
            ),
            MySizedBox(width: 0, height: 20),
            //email textfield
            MyTextField(
              paddings: [25, 25, 0, 0],
              hint: StaticTexts.registerMail,
              keyboardType: TextInputType.emailAddress,
              prefixIcon: Icon(Icons.mail_rounded),
            ),
            MySizedBox(width: 0, height: 20),
            //password textfield
            MyTextField(
              paddings: [25, 25, 0, 0],
              hint: StaticTexts.registerPassword,
              keyboardType: TextInputType.visiblePassword,
              prefixIcon: Icon(Icons.lock_rounded),
            ),
            MySizedBox(width: 0, height: 20),
            //confirm password textfield
            MyTextField(
              paddings: [25, 25, 0, 0],
              hint: StaticTexts.registerConfirmPassword,
              keyboardType: TextInputType.visiblePassword,
              prefixIcon: Icon(Icons.lock_rounded),
            ),
            MySizedBox(width: 0, height: 35),
            MyElevatedButton(
              onpressed: () {},
              text: StaticTexts.register,
              paddings: [25, 25, 0, 0],
            ),
            MySizedBox(width: 0, height: 25),
            BottomRow(
                leftText: StaticTexts.alreadyhaveAnAccount,
                rightText: StaticTexts.signIn,
                ontap: Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignInPage())))
          ],
        ),
      ),
    );
  }
}
