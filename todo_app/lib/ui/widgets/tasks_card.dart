import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/static/static_colors.dart';
import 'package:todo_app/static/static_texts.dart';
import 'package:todo_app/ui/widgets/my_text.dart';

class TasksCard extends StatelessWidget {
  TasksCard({super.key});
  final List<String> tasks = [
    StaticTexts.task1,
    StaticTexts.task2,
    StaticTexts.task3,
    StaticTexts.task4,
    StaticTexts.task5,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 15,
                  color: StaticColors.iconColor,
                  spreadRadius: 0.5,
                  offset: Offset(10, 10))
            ],
            color: StaticColors.buttonTextColor,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        width: MediaQuery.of(context).size.width / 1,
        height: MediaQuery.of(context).size.height / 3.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 12.0, left: 12.0, right: 12.0, bottom: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                      text: StaticTexts.dailyTasks,
                      textStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: StaticColors.iconColor,
                          fontSize: 13)),
                  Icon(
                    Icons.add_circle_outline,
                    color: StaticColors.myRed,
                    size: 35,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: ListView.builder(
                itemCount: tasks.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 20,
                    child: ListTile(
                      minLeadingWidth: 0,
                      leading: Icon(
                        Icons.rectangle_sharp,
                        color: StaticColors.myRed,
                        size: 10,
                      ),
                      title: MyText(
                          textAlign: TextAlign.start,
                          text: tasks[index],
                          textStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500, fontSize: 12)),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
