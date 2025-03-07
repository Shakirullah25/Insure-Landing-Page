import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';
import 'package:url_launcher/url_launcher.dart';

class TextWithUrl extends StatelessWidget {
  const TextWithUrl({super.key});

  Future<void> launchURL() async {
    const url = "https://www.frontendmentor.io/challenges";
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw "Could not launch $url";
    }
  }

  // ignore_deprecated_member
  Future<void> launchMyURL() async {
    const url = "https://x.com/Shakirullah25";
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      await launchUrl(
        Uri.parse(url),
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double pageScreenWidth = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (_, constraints) {
        double availableWidth = constraints.maxWidth;

        // Dynamically scale font size
        double footerFontSize = (pageScreenWidth >= 500)
            ? screenWidth * 0.024
            : (pageScreenWidth >= 700)
                ? screenWidth * 0.018
                : screenWidth * 0.038;
        if (availableWidth >= 1000) {
          // Desktop mode
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      style: GoogleFonts.karla(
                        color: AppColors.darkGrayishViolet,
                        fontSize: screenWidth * 0.01,
                      ),
                      children: [
                        const TextSpan(text: "Challenge by "),
                        TextSpan(
                          text: "Frontend Mentor",
                          style: GoogleFonts.karla(
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
                  style: GoogleFonts.karla(
                    color: AppColors.darkGrayishViolet,
                    fontSize: screenWidth * 0.01,
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
          );
        } else {
          // Mobile mode
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      style: GoogleFonts.karla(
                        color: AppColors.darkGrayishViolet,
                        fontSize: footerFontSize,
                      ),
                      children: [
                        const TextSpan(text: "Challenge by "),
                        TextSpan(
                          text: "Frontend Mentor",
                          style: GoogleFonts.karla(
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
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.karla(
                    color: AppColors.darkGrayishViolet,
                    fontSize: footerFontSize,
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
          );
        }
      },
    );
  }
}
