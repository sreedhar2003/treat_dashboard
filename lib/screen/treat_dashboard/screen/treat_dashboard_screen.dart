import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:treat_dashboard/helpers/appcolors.dart';
import 'package:treat_dashboard/helpers/screen_config.dart';
import 'package:treat_dashboard/helpers/size_extensions.dart';
import 'package:treat_dashboard/helpers/sizedbox.dart';
import 'package:treat_dashboard/screen/treat_dashboard/controller/treat_dashboard_controller.dart';
import 'package:treat_dashboard/screen/treat_dashboard/widgets/buttons.dart';
import 'package:treat_dashboard/screen/treat_dashboard/widgets/grid_cards.dart';
import 'package:treat_dashboard/screen/treat_dashboard/widgets/hba1c_graph.dart';
import 'package:treat_dashboard/screen/treat_dashboard/widgets/heartrate_indicator.dart';
import 'package:treat_dashboard/screen/treat_dashboard/widgets/roundpercentage_card.dart';

class TreatDashboardScreen extends StatefulWidget {
  const TreatDashboardScreen({super.key});

  @override
  State<TreatDashboardScreen> createState() => _TreatDashboardScreenState();
}

class _TreatDashboardScreenState extends State<TreatDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<DashboardTreatController>();
    ScreenUtil.getInstance().init(context);
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          Row(
            children: [
              Text(
                "Treat Dashboard",
                style: GoogleFonts.roboto(
                  color: AppColors.headingcolor,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Image.asset(
                  height: 20,
                  width: 20,
                  "assets/images/crown.png",
                  fit: BoxFit.cover),
            ],
          ),
          sizedBoxWithHeight(10),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today's Treatment Summary",
                  style: GoogleFonts.roboto(
                    color: AppColors.headingcolor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                sizedBoxWithHeight(10),
                Container(
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
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                              height: 20,
                              width: 20,
                              "assets/images/clock.png",
                              fit: BoxFit.cover),
                          sizedBoxWithWidth(5),
                          Text(
                            "Upcoming Appointment",
                            style: GoogleFonts.roboto(
                              color: AppColors.red,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      sizedBoxWithHeight(10),
                      Row(
                        children: [
                          Image.asset(
                              height: 78,
                              width: 67,
                              "assets/images/doctor_image.png",
                              fit: BoxFit.cover),
                          sizedBoxWithWidth(5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dr. Meera Arun",
                                style: GoogleFonts.roboto(
                                  color: AppColors.black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              sizedBoxWithHeight(20),
                              Text(
                                "Nutritionist & Diet Consultant",
                                style: GoogleFonts.roboto(
                                  color: AppColors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "HealthyLife Clinic, NYC",
                                style: GoogleFonts.roboto(
                                  color: AppColors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Tuesday, April 18 • 4:30 PM",
                                style: GoogleFonts.roboto(
                                  color: AppColors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      sizedBoxWithHeight(10),
                      Row(
                        children: [
                          Container(
                            height: 36.h,
                            width: 140.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColors.green,
                            ),
                            child: Center(
                              child: Text(
                                "View",
                                style: GoogleFonts.roboto(
                                  color: AppColors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 36.h,
                            width: 140.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: AppColors.red),
                            ),
                            child: Center(
                              child: Text(
                                "Cancel",
                                style: GoogleFonts.roboto(
                                  color: AppColors.red,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                sizedBoxWithHeight(10),
                Container(
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
                  child: Column(children: [
                    Row(
                      children: [
                        Image.asset(
                            height: 20,
                            width: 20,
                            "assets/images/clock_orange.png",
                            fit: BoxFit.cover),
                        sizedBoxWithWidth(5),
                        Text(
                          "Due Today",
                          style: GoogleFonts.roboto(
                            color: AppColors.yellow,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "6:00 PM",
                          style: GoogleFonts.roboto(
                            color: AppColors.yellow,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    sizedBoxWithHeight(10),
                    Container(
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
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: AppColors.smallcontainercolor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Image.asset(
                                height: 35,
                                width: 42,
                                "assets/images/tablet_logo.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          sizedBoxWithWidth(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Roaccutane, 30mg",
                                style: GoogleFonts.roboto(
                                  color: AppColors.green,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              sizedBoxWithHeight(5),
                              Text(
                                "1 tablet/ day ",
                                style: GoogleFonts.roboto(
                                  color: AppColors.grey,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
                sizedBoxWithHeight(10),
                Container(
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
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                                height: 20,
                                width: 20,
                                "assets/images/clock_orange.png",
                                fit: BoxFit.cover),
                            sizedBoxWithWidth(5),
                            Text(
                              "Due Today",
                              style: GoogleFonts.roboto(
                                color: AppColors.yellow,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        sizedBoxWithHeight(10),
                        Text(
                          "Upload lab report for diabetes review",
                          style: GoogleFonts.roboto(
                            color: AppColors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        sizedBoxWithHeight(10),
                        Buttons(subject: "Upload Now", ontap: () {}),
                      ]),
                ),
              ],
            ),
          ),
          sizedBoxWithHeight(20),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.containercolor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Smart Recommendations",
                  style: GoogleFonts.roboto(
                    color: AppColors.headingcolor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                sizedBoxWithHeight(10),
                Row(
                  children: [
                    Image.asset(
                      height: 20,
                      width: 20,
                      "assets/images/correct_circle.png",
                      fit: BoxFit.cover,
                    ),
                    sizedBoxWithWidth(5),
                    Expanded(
                      child: Text(
                        "Time to schedule your 3-month review with Dr. Anjali.",
                        maxLines: 2,
                        style: GoogleFonts.roboto(
                          color: AppColors.grey,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                sizedBoxWithHeight(10),
                Row(
                  children: [
                    Image.asset(
                      height: 20,
                      width: 20,
                      "assets/images/correct_circle.png",
                      fit: BoxFit.cover,
                    ),
                    sizedBoxWithWidth(5),
                    Expanded(
                      child: Text(
                        "Your BP has been stable for 60 days ask your doctor if medication tapering is possible.",
                        maxLines: 2,
                        style: GoogleFonts.roboto(
                          color: AppColors.grey,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                sizedBoxWithHeight(10),
                Buttons(subject: "Book Appointment", ontap: () {}),
                sizedBoxWithHeight(10),
                Buttons(subject: "Book Lab Test", ontap: () {}),
              ],
            ),
          ),
          sizedBoxWithHeight(25),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      height: 24,
                      width: 24,
                      "assets/images/heartrate_logo.png",
                      fit: BoxFit.cover,
                    ),
                    sizedBoxWithWidth(5),
                    Text(
                      "Heart Rate",
                      style: GoogleFonts.roboto(
                        color: AppColors.headingcolor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                sizedBoxWithHeight(10),
                Row(
                  children: [
                    // percentage indicator
                    const HeartRateIndicator(
                      bpm: 76,
                      percent: 0.76,
                    ),
                    sizedBoxWithWidth(10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "Status: ",
                                  style: GoogleFonts.roboto(
                                    color: AppColors.grey,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: "Normal",
                                  style: GoogleFonts.roboto(
                                    color: AppColors.green,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          sizedBoxWithHeight(10),
                          Text(
                            "Measured on 12 June 2025, 8:45 AM",
                            maxLines: 2,
                            style: GoogleFonts.roboto(
                              color: AppColors.grey,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                sizedBoxWithHeight(20),
                Buttons(subject: "Measure Heart Rate", ontap: () {}),
              ],
            ),
          ),
          sizedBoxWithHeight(25),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      height: 24,
                      width: 24,
                      "assets/images/glucosemeter.png",
                      fit: BoxFit.cover,
                    ),
                    sizedBoxWithWidth(5),
                    Text(
                      "Diabetes",
                      maxLines: 2,
                      style: GoogleFonts.roboto(
                        color: AppColors.green,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                sizedBoxWithHeight(10),
                Container(
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "HbA1c",
                        style: GoogleFonts.roboto(
                          color: AppColors.grey,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      sizedBoxWithHeight(10),
                      Row(
                        children: [
                          Text(
                            "6.4%",
                            style: GoogleFonts.roboto(
                              color: AppColors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            height: 13.33,
                            width: 13.33,
                            "assets/images/correct_circle.png",
                            fit: BoxFit.cover,
                          ),
                          sizedBoxWithWidth(5),
                          Text(
                            "In Reversal Zone",
                            style: GoogleFonts.roboto(
                              color: AppColors.green,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      sizedBoxWithHeight(40),
                      Hba1cGraph(),
                    ],
                  ),
                ),
                sizedBoxWithHeight(10),
                Container(
                  width: double.infinity,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Key Metrics",
                        style: GoogleFonts.roboto(
                          color: AppColors.headingcolor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      sizedBoxWithHeight(10),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "HbA1c Trend: HbA1c dropping from ",
                              style: GoogleFonts.roboto(
                                color: AppColors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "8.2% → 6.4%",
                              style: GoogleFonts.roboto(
                                color: AppColors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      sizedBoxWithHeight(10),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Fasting Glucose: ",
                              style: GoogleFonts.roboto(
                                color: AppColors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "110 mg/dL",
                              style: GoogleFonts.roboto(
                                color: AppColors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "(Latest)",
                              style: GoogleFonts.roboto(
                                color: AppColors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      sizedBoxWithHeight(10),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Postprandial Glucose: ",
                              style: GoogleFonts.roboto(
                                color: AppColors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "160 mg/dL",
                              style: GoogleFonts.roboto(
                                color: AppColors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "(Latest)",
                              style: GoogleFonts.roboto(
                                color: AppColors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      sizedBoxWithHeight(10),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Medication Adherence: ",
                              style: GoogleFonts.roboto(
                                color: AppColors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "90%",
                              style: GoogleFonts.roboto(
                                color: AppColors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      sizedBoxWithHeight(10),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Last Doctor Visit: ",
                              style: GoogleFonts.roboto(
                                color: AppColors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "May 1, 2025",
                              style: GoogleFonts.roboto(
                                color: AppColors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxWithHeight(10),
                Container(
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lifestyle",
                        style: GoogleFonts.roboto(
                          color: AppColors.headingcolor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      sizedBoxWithHeight(10),
                      Container(
                        height: 44,
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          color: AppColors.containercolor,
                          borderRadius: BorderRadius.circular(37),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Image.asset(
                                height: 20,
                                width: 20,
                                "assets/images/correct_circle_outline.png",
                                fit: BoxFit.cover,
                              ),
                              sizedBoxWithWidth(10),
                              Text(
                                "Low-carb diet followed 70%",
                                style: GoogleFonts.roboto(
                                  color: AppColors.green,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      sizedBoxWithHeight(10),
                      Container(
                        height: 44,
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          color: AppColors.containercolor,
                          borderRadius: BorderRadius.circular(37),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Image.asset(
                                height: 20,
                                width: 20,
                                "assets/images/correct_circle_outline.png",
                                fit: BoxFit.cover,
                              ),
                              sizedBoxWithWidth(10),
                              Text(
                                "Walking 4x/week",
                                style: GoogleFonts.roboto(
                                  color: AppColors.green,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxWithHeight(10),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.redcontainercolor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Notes",
                            style: GoogleFonts.roboto(
                              color: AppColors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            height: 20,
                            width: 20,
                            "assets/images/warning_symbol.png",
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      sizedBoxWithHeight(10),
                      Text(
                        "Time for new HbA1c test",
                        style: GoogleFonts.roboto(
                          color: AppColors.red,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      sizedBoxWithHeight(10),
                      Text(
                        "Ask doctor about tapering medicine if trend continues",
                        maxLines: 2,
                        style: GoogleFonts.roboto(
                          color: AppColors.red,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          sizedBoxWithHeight(15),
          SizedBox(
            height: 510.h,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.2, //5.0 in tab and laptop view
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: provider.gridcardslist.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {},
                child: GridCards(
                    subject: provider.gridcardslist[index]["subject"],
                    image: provider.gridcardslist[index]["image"]),
              ),
            ),
          ),
        ]),
      ),
    )));
  }
}
