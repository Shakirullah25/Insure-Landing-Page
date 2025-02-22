import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_landing_page/colors.dart';

class TextWithUrl extends StatelessWidget {
  const TextWithUrl({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        double availableWidth = constraints.maxWidth;
        double fontSize;
        double bottomAppBarSize;

        // For svg images
        if (availableWidth >= 1200) {
          // Desktop mode
          fontSize = availableWidth * 0.015;
        } else {
          // Mobile mode
          fontSize = availableWidth * 0.030;
        }

        // for bottom app bar
        if (availableWidth >= 1200) {
          bottomAppBarSize = availableWidth * 0.04;
        } else {
          bottomAppBarSize = availableWidth * 0.10;
        }

        return SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      style: GoogleFonts.epilogue(
                        color: AppColors.darkGrayishViolet,
                        fontSize: fontSize,
                      ),
                      children: [
                        const TextSpan(text: "Challenge by "),
                        TextSpan(
                          text: " Frontend Mentor",
                          style: GoogleFonts.epilogue(
                            color: const Color.fromARGB(255, 20, 108, 197),
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = launchURL,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: AppColors.darkGrayishViolet,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 12),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.epilogue(
                    color: AppColors.darkGrayishViolet,
                    fontSize: fontSize,
                  ),
                  children: [
                    const TextSpan(text: "Coded by "),
                    TextSpan(
                      text: "Shakirullah25",
                      style: const TextStyle(
                        color: Color.fromARGB(255, 20, 108, 197),
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = launchMyURL,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
