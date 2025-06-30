import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:treat_dashboard/helpers/appcolors.dart';
import 'package:treat_dashboard/helpers/size_extensions.dart';

class HeartRateIndicator extends StatelessWidget {
  final int bpm;
  final double percent; // e.g., 0.76 for 76%

  const HeartRateIndicator(
      {super.key, required this.bpm, required this.percent});

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 60.0,
      lineWidth: 15.0,
      animation: true,
      percent: percent,
      circularStrokeCap: CircularStrokeCap.round,
      backgroundColor: AppColors.containercolor,
      linearGradient: const LinearGradient(
        colors: [
          AppColors.green,
          AppColors.headingcolor,
        ],
      ),
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.favorite, color: AppColors.red, size: 24),
          Text(
            '$bpm',
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: AppColors.green),
          ),
          Text(
            'BPM',
            style: GoogleFonts.roboto(
              color: AppColors.grey,
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
