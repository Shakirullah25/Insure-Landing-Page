import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_landing_page/colors.dart';

class MobileInsureLandingPage extends StatelessWidget {
  MobileInsureLandingPage({super.key});

  final List<Map<String, dynamic>> drawerbuttons = [
    {"text": "HOW WE WORK"},
     {"text": "BLOG"},
      {"text": "ACCOUNT"},
       {"text": "VIEW PLANS"},
  ];

  @override
  Widget build(BuildContext context) {
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
      drawer: Drawer(
        elevation: 0,
        backgroundColor: AppColors.darkViolet,
        width: double.infinity,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 80,
              color: AppColors.veryLightGray,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close),
                    iconSize: 35,
                    color: AppColors.darkViolet,
                  ),
                  const Spacer(),
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
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    subtitle: TextButton(
                      onPressed: () {},
                      child: drawerbuttons.map((textButtons) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          )
                      }),
                      // child: Text(
                      //   "HOW WE WORK",
                      //   style: GoogleFonts.karla(
                      //     fontSize: 30,
                      //     color: AppColors.veryLightGray,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

/* 
Text(
            "INSURE",
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 35,
              color: AppColors.darkViolet,
              fontWeight: FontWeight.bold,
            ),
          ),
*/
