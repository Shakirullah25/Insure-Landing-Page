
          child: ElevatedButton(
            onPressed: _onPressed,
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
