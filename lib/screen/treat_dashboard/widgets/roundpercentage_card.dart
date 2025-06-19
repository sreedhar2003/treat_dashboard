import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treat_dashboard/helpers/appcolors.dart';
import 'package:treat_dashboard/helpers/size_extensions.dart';

class HeartRateCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double percentage = 0.76; // 76%
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background circle
          SizedBox(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(
              value: 1,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green.shade100),
              strokeWidth: 10,
            ),
          ),
          // Foreground circle (percentage)
          SizedBox(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(
              value: percentage,
              valueColor: const AlwaysStoppedAnimation<Color>(AppColors.green),
              backgroundColor: Colors.transparent,
              strokeWidth: 10,
            ),
          ),
          // Center content
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.favorite, size: 17, color: AppColors.red),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '76\n',
                      style: GoogleFonts.roboto(
                        color: AppColors.green,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: 'BPM',
                      style: GoogleFonts.roboto(
                        color: AppColors.grey,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
