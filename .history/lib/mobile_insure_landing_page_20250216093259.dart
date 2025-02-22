import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_landing_page/colors.dart';
import 'package:insure_landing_page/drawer_content.dart';
import 'package:insure_landing_page/text_with_url.dart';

class MobileInsureLandingPage extends StatefulWidget {
  MobileInsureLandingPage({super.key});

  @override
  State<MobileInsureLandingPage> createState() =>
      _MobileInsureLandingPageState();
}

class _MobileInsureLandingPageState extends State<MobileInsureLandingPage> {
  final List<Map<String, dynamic>> assets = [
    {
      "path": "lib/assets/image/icon-snappy-process.svg",
      "title": "Snappy Process",
      "description":
          "Our application process can be completed in minutes, not hours. Don’t get stuck filling in tedious forms."
    },
    {
      "path": "lib/assets/image/icon-affordable-prices.svg",
      "title": "Affordable Prices",
      "description":
          "We don’t want you worrying about high monthly costs. Our prices may be low, but we still offer the best coverage possible."
    },
    {
      "path": "lib/assets/image/icon-people-first.svg",
      "title": "People First",
      "description":
          "Our plans aren’t full of conditions and clauses to prevent payouts. We make sure you’re covered when you need it."
    },
  ];

  final List<Map<String, dynamic>> footerAssets = [
    {"path": "lib/assets/image/icon-facebook.svg"},
    {"path": "lib/assets/image/icon-twitter.svg"},
    {"path": "lib/assets/image/icon-pinterest.svg"},
    {"path": "lib/assets/image/icon-instagram.svg"},
  ];

  final List<Map<String, dynamic>> fAssets = [
    {
      "title": "OUR COMPANY",
      "items": ["HOW WE WORK", "WHY INSURE", "VIEW PLANS", "REVIEWS"],
    },
    {
      "title": "HELP ME",
      "items": ["FAQ", "TERMS OF USE", "PRIVACY POLICY", "COOKIES"],
    },
    {
      "title": "CONTACT",
      "items": [
        "SALES",
        "SUPPORT",
        "LIVE CHAT",
      ],
    },
    {
      "title": "OTHERS",
      "items": [
        "CAREERS",
        "PRESS",
        "LICENSES",
      ],
    },
  ];

  String? activeButton;

  void _onPressed(String label) {
    setState(() {
      activeButton = label;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.veryLightGray,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: AppColors.veryLightGray,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "INSURE",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 30,
                color: AppColors.darkViolet,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (_, constraints) {
          
        },
        
      ),
      drawer: const DrawerContent(),
    );
  }
}
