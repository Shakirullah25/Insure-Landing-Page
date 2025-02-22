import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_landing_page/colors.dart';

class AppBarContent extends StatefulWidget implements PreferredSizeWidget {
  final double toolbarHeight;
  final Color backgroundColor;
  final double elevation;
  final Widget title;
  final List<Widget> actions;

  AppBarContent({
    super.key,
    required this.toolbarHeight,
    required this.backgroundColor,
    required this.elevation,
    required this.title,
    required this.actions,
  });

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);

  @override
  _AppBarContentState createState() => _AppBarContentState();
}

class _AppBarContentState extends State<AppBarContent> {
  final List<String> buttonLabels = ["HOW WE WORK", "BLOG", "ACCOUNT"];
  List<bool> isButtonPressed;

  @override
  void initState() {
    super.initState();
    isButtonPressed = List<bool>.filled(buttonLabels.length, false);
  }

  void _onPressed(int index) {
    setState(() {
      for (int i = 0; i < isButtonPressed.length; i++) {
        isButtonPressed[i] = i == index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: widget.toolbarHeight,
      backgroundColor: widget.backgroundColor,
      elevation: widget.elevation,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150),
        child: widget.title,
      ),
      actions: [
        ...buttonLabels.asMap().entries.map((entry) {
          int index = entry.key;
          String label = entry.value;
          return TextButton(
            onPressed: () => _onPressed(index),
            child: Text(
              label,
              style: GoogleFonts.karla(
                color: isButtonPressed[index]
                    ? AppColors.darkGrayishViolet
                    : AppColors.veryDarkViolet,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        }).toList(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
            onPressed: () => _onPressed(0),
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              backgroundColor: widget.isbuttonPressed
                  ? AppColors.veryLightGray
                  : AppColors.veryDarkViolet,
              foregroundColor: widget.isbuttonPressed
                  ? AppColors.veryDarkViolet
                  : AppColors.veryLightGray,
              // backgroundColor: AppColors.veryLightGray,
              // foregroundColor: AppColors.veryDarkViolet,
              side: const BorderSide(color: AppColors.veryDarkViolet, width: 2),
            ),
            child: Text(
              "VIEW PLANS",
              style: GoogleFonts.karla(
                fontSize: 17,
                color: widget.isbuttonPressed
                    ? AppColors.veryDarkViolet
                    : AppColors.veryLightGray,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
