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

  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: toolbarHeight,
      backgroundColor: backgroundColor,
      //backgroundColor: AppColors.veryLightGray,
      elevation: elevation,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150),
        child: Text(
          "INSURE",
          style: GoogleFonts.dmSerifDisplay(
            fontSize: 35,
            color: AppColors.darkViolet,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            "HOW WE WORK",
            style: GoogleFonts.karla(
              fontSize: 18,
              color: AppColors.darkGrayishViolet,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "BLOG",
            style: GoogleFonts.karla(
              fontSize: 18,
              color: AppColors.darkGrayishViolet,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "ACCOUNT",
            style: GoogleFonts.karla(
              fontSize: 18,
              color: AppColors.darkGrayishViolet,
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
            ),
          ),
        )
      ],
    );
  }
}
