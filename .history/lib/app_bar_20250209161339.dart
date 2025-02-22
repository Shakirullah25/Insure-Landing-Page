import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_landing_page/colors.dart';

class AppBarContent extends StatelessWidget implements PreferredSizeWidget {
  final double toolbarHeight;
  final Color backgroundColor;
  final double elevation;
  final Widget title;
  final List<Widget> actions;

  const AppBarContent({
    super.key,
    required this.toolbarHeight,
    required this.backgroundColor,
    required this.elevation,
    required this.title, required this.actions,
  });

  @override

  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: toolbarHeight,
      backgroundColor: backgroundColor,
      elevation: elevation,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150),
        child: title,
      ),
      actions: [
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return AppColors.veryDarkViolet;
                }
                return AppColors.darkGrayishViolet;
              },
            ),
          ),
          child: Text(
            "HOW WE WORK",
            style: GoogleFonts.karla(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return AppColors.veryDarkViolet;
                }
                return AppColors.darkGrayishViolet;
              },
            ),
          ),
          child: Text(
            "BLOG",
            style: GoogleFonts.karla(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return AppColors.veryDarkViolet;
                }
                return AppColors.darkGrayishViolet;
              },
            ),
          ),
          child: Text(
            "ACCOUNT",
            style: GoogleFonts.karla(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "VIEW PLANS",
              style: GoogleFonts.karla(
                fontSize: 18,
                color: AppColors.veryDarkViolet,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              backgroundColor: AppColors.veryLightGray,
              foregroundColor: AppColors.veryDarkViolet,
              side: BorderSide(color: AppColors.veryDarkViolet, width: 2),
            ).copyWith(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return AppColors.lightGrayishViolet;
                  }
                  return AppColors.veryLightGray;
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
