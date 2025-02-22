class DrawerContent extends StatelessWidget {
  const DrawerContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                const SizedBox(height: 15),
                ListTile(
                  subtitle: TextButton(
                    onPressed: () {},
                    child: Text(
                      "HOW WE WORK",
                      style: GoogleFonts.karla(
                        fontSize: 22,
                        color: AppColors.veryLightGray,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                //const SizedBox(height: 15),
                ListTile(
                  subtitle: TextButton(
                    onPressed: () {},
                    child: Text(
                      "BLOG",
                      style: GoogleFonts.karla(
                        fontSize: 22,
                        color: AppColors.veryLightGray,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  subtitle: TextButton(
                    onPressed: () {},
                    child: Text(
                      "ACCOUNT",
                      style: GoogleFonts.karla(
                        fontSize: 22,
                        color: AppColors.veryLightGray,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  subtitle: TextButton(
                    onPressed: () {},
                    child: Text(
                      "VIEW PLANS",
                      style: GoogleFonts.karla(
                        fontSize: 22,
                        color: AppColors.veryLightGray,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // const Spacer(),
          SvgPicture.asset(
            "lib/assets/image/bg-pattern-mobile-nav.svg",
            width: 240,
            height: 240,
          ),
        ],
      ),
    );
  }
}