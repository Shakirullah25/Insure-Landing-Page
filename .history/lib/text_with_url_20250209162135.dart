import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_landing_page/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class TextWithUrl extends StatelessWidget {
  const TextWithUrl({super.key});

  final bool _isPressed;

  void _onPressed() {
    _isPressed = !_isPressed;
  }

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

  Future<void> launchMyURL() async {
    const url = "https://x.com/Shakirullah25";
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launchUrl(
        mode: kIsWeb
            ? LaunchMode.platformDefault
            : LaunchMode.externalApplication,
        webOnlyWindowName: "_blank", // opens in a new tab,
        Uri.parse(
          url,
        ),
      );
    } else {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        double availableWidth = constraints.maxWidth;

        // For svg images
        if (availableWidth >= 1200) {
          // Desktop mode
        } else {
          // Mobile mode
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
                        fontSize: 15,
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
                    fontSize: 15,
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
