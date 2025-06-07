import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treat_dashboard/helpers/appcolors.dart';
import 'package:treat_dashboard/helpers/size_extensions.dart';
import 'package:treat_dashboard/helpers/sizedbox.dart';

class GridCards extends StatelessWidget {
  final String subject;
  final String image;
  const GridCards({super.key, required this.subject, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 138.h,
      // width: 161.w,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              height: 64.31,
              width: 64.31,
              image,
              fit: BoxFit.cover,
            ),
            sizedBoxWithHeight(10),
            Text(
              subject,
              style: GoogleFonts.roboto(
                  color: AppColors.headingcolor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
