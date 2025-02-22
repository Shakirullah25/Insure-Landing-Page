import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_landing_page/colors.dart';

class AppBarContent extends StatefulWidget implements PreferredSizeWidget {
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
  String? activeButton;

  void _onPressed(String label) {
    setState(() {
      activeButton = label;
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
        ...buttonLabels.map((label) {
          return TextButton(
            onPressed: () => _onPressed(label),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed) || activeButton == label) {
                    return AppColors.veryDarkViolet;
                  }
                  return AppColors.darkGrayishViolet;
                },
              ),
            ),
            child: Text(
              label,
              style: GoogleFonts.karla(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        })
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
            onPressed: () => _onPressed("VIEW PLANS"),
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              backgroundColor: activeButton == "VIEW PLANS"
                  ? AppColors.lightGrayishViolet
                  : AppColors.veryLightGray,
              foregroundColor: activeButton == "VIEW PLANS"
                  ? AppColors.darkViolet
                  : AppColors.veryDarkViolet,
              side: const BorderSide(color: AppColors.veryDarkViolet, width: 2),
            ),
            child: Text(
              "VIEW PLANS",
              style: GoogleFonts.karla(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
