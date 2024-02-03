// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tobeto_app/model/department_model.dart';
import 'package:tobeto_app/theme/tobeto_theme_color.dart';
import 'package:tobeto_app/view/screens/video_player.dart';

class EducationalCard extends StatelessWidget {
  const EducationalCard({Key? key, required this.department}) : super(key: key);

  /* final String title;
  final String subTitle; */

  final DepartmentVideoModel department;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: isDarkMode
                    ? Colors.grey.withOpacity(0.1)
                    : Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 3),
          ],
          color: isDarkMode
              ? TobetoAppColor.buttonColorDark
              : TobetoAppColor.buttonColorLight),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  department.videoName,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  "Dateeee",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Image.asset(
                  // 344 × 258
                  'assets/images/video_image.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //     VideoApp(videoUrl: department.videoUrl),

          // Margin derini nereden alıyor ?
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => LessonVideo(
                          videoUrl: department.videoUrl,
                        )));
              },
              child: Text(
                "EĞİTİME GİT",
                style: TextStyle(
                    color: isDarkMode
                        ? TobetoAppColor.textColorDark
                        : TobetoAppColor.colorSchemeLight.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
