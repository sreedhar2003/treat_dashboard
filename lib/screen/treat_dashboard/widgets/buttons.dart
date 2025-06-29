import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treat_dashboard/helpers/appcolors.dart';
import 'package:treat_dashboard/helpers/size_extensions.dart';

class Buttons extends StatelessWidget {
  final String subject;
  final GestureTapCallback ontap;
  const Buttons({super.key, required this.subject, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(82),
          gradient: const LinearGradient(
            colors: [
              AppColors.headingcolor,
              AppColors.green,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text(
            subject,
            style: GoogleFonts.roboto(
              color: AppColors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
