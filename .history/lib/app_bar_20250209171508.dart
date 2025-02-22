import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_landing_page/colors.dart';

// ignore: must_be_immutable
class AppBarContent extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
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
  State<AppBarContent> createState() => _AppBarContentState();
}

class _AppBarContentState extends State<AppBarContent> {
  @override
  Size get preferredSize => const Size.fromHeight(80);

  void _onPressed() {
    isbuttonPressed = !widget.isbuttonPressed;
  }

  @override
  Widget build(BuildContext context) {
    final List<String> buttonLabels = ["HOW WE WORK", "BLOG", "ACCOUNT"];
    return AppBar(
      toolbarHeight: widget.toolbarHeight,
      backgroundColor: widget.backgroundColor,
      elevation: widget.elevation,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150),
        child: widget.title,
      ),
      actions: [
        ...buttonLabels.map((label) {
          return TextButton(
            onPressed: _onPressed,
            child: Text(
              label,
              style: GoogleFonts.karla(
                color: widget.isbuttonPressed
                    ? AppColors.darkGrayishViolet
                    : AppColors.veryDarkViolet,
                // color: AppColors.darkGrayishViolet,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
            onPressed: _onPressed,
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              backgroundColor: widget.isbuttonPressed ? AppColors.veryLightGray : AppColors.veryDarkViolet,
              foregroundColor: widget.isbuttonPressed ? AppColors.veryDarkViolet : AppColors.veryLightGray,
              // backgroundColor: AppColors.veryLightGray,
              // foregroundColor: AppColors.veryDarkViolet,
              side: const BorderSide(color: AppColors.veryDarkViolet, width: 2),
            ),
            child: Text(
              "VIEW PLANS",
              style: GoogleFonts.karla(
                fontSize: 17,
                color: widget.isbuttonPressed ? AppColors.veryDarkViolet : AppColors.veryLightGray,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
