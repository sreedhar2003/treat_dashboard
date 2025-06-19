import 'package:flutter/material.dart';

class DashboardTreatController with ChangeNotifier {
  List<Map<String, dynamic>> gridcardslist = [
    {
      "subject": "OP  Appointments",
      "image": "assets/images/op_appointments.png",
    },
    {
      "subject": "Other Appointments",
      "image": "assets/images/other_appointments.png",
    },
    {
      "subject": "Medication",
      "image": "assets/images/medication.png",
    },
    {
      "subject": "Treatment History",
      "image": "assets/images/treatment_history.png",
    },
    {
      "subject": "Prescription & Lab Reports",
      "image": "assets/images/prescriptions.png",
    },
    {
      "subject": "Vitals",
      "image": "assets/images/vitals.png",
    },
  ];
  final List<double> values = [10, 9, 9, 7, 1, 1, 1];
  final List<Color> colors = [
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.grey,
    Colors.grey,
    Colors.grey,
  ];
  final List<String> days = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
}
