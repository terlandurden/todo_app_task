import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/static/static_colors.dart';

class MyTextField extends StatefulWidget {
  const MyTextField(
      {super.key,
      required this.hint,
      required this.keyboardType,
      required this.prefixIcon,
      this.paddings = const [0, 0, 0, 0]});
  final List<double> paddings;
  final String hint;
  final TextInputType keyboardType;
  final Widget prefixIcon;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final FocusNode myFocusNode = FocusNode();
  bool passwordVisible = false;

  @override
  void initState() {
    myFocusNode.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: widget.paddings[0],
          right: widget.paddings[1],
          top: widget.paddings[2],
          bottom: widget.paddings[3]),
      child: TextField(
        obscureText: widget.keyboardType == TextInputType.visiblePassword &&
                passwordVisible == false
            ? true
            : false,
        focusNode: myFocusNode,
        //change keyboardtype
        keyboardType: widget.keyboardType,
        textAlign: TextAlign.left,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            prefixIconColor: myFocusNode.hasFocus
                ? StaticColors.buttonColor
                : StaticColors.iconColor,
            suffixIconColor: myFocusNode.hasFocus
                ? StaticColors.buttonColor
                : StaticColors.iconColor,
            suffixIcon: widget.keyboardType == TextInputType.visiblePassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        if (passwordVisible == false) {
                          passwordVisible = true;
                        } else {
                          passwordVisible = false;
                        }
                      });
                    },
                    icon: passwordVisible
                        ? Icon(Icons.visibility_rounded)
                        : Icon(Icons.visibility_off_rounded),
                  )
                : null,
            //icon parametr olaraq gəlirsə focus zamanı iconun rəngini necə dəyişməli????
            prefixIcon: widget.prefixIcon,
            hintText: widget.hint,
            hintStyle:
                GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500),
            //for the padding on text and hint
            contentPadding: const EdgeInsets.symmetric(horizontal: 32),
            filled: true,
            fillColor: StaticColors.buttonTextColor,
            border: OutlineInputBorder(
                borderSide: BorderSide(style: BorderStyle.none)),
            enabled: true,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(style: BorderStyle.none)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(style: BorderStyle.none))),
      ),
    );
  }
}
