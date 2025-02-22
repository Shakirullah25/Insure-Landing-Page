import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_landing_page/colors.dart';

class AppBarContent extends StatelessWidget implements PreferredSizeWidget {
  final double toolbarHeight;
  final Color backgroundColor;
  final double elevation;
  final Widget title;
  final List<Widget> actions;
  bool isbuttonPressed;

  AppBarContent({
    super.key,
    required this.toolbarHeight,
    required this.backgroundColor,
    required this.elevation,
    required this.title,
    required this.actions,
    this.isbuttonPressed = false,
  });

  @override
  Size get preferredSize => const Size.fromHeight(80);

  void _OnPressed() {
    isbuttonPressed = !isbuttonPressed;
  }

  @override
  Widget build(BuildContext context) {
    final List<String> buttonLabels = ["HOW WE WORK", "BLOG", "ACCOUNT"];
    return AppBar(
      toolbarHeight: toolbarHeight,
      backgroundColor: backgroundColor,
      elevation: elevation,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150),
        child: title,
      ),
      actions: [
        ...buttonLabels.map((label) {
          return TextButton(
            onPressed: () {},
            child: Text(
              label,
              style: GoogleFonts.karla(
                color: isbuttonPressed
                    ? AppColors.darkGrayishViolet
                    : AppColors.veryDarkViolet,
                // color: AppColors.darkGrayishViolet,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              backgroundColor: isbuttonPressed ? AppColors.AppColors.veryLightGray : AppColors.veryLightGray,
              foregroundColor: isbuttonPressed ? AppC,
              // backgroundColor: AppColors.veryLightGray,
              // foregroundColor: AppColors.veryDarkViolet,
              side: const BorderSide(color: AppColors.veryDarkViolet, width: 2),
            ),
            child: Text(
              "VIEW PLANS",
              style: GoogleFonts.karla(
                fontSize: 18,
                color: AppColors.veryDarkViolet,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
