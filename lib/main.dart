import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Data-Models/applicant_status.dart';
import 'GlobalVariables/global_variable.dart';
import 'ui_widgets/landing_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await testJson();

  runApp(const MyApp());
}

Future<void> testJson() async {
  final file = await rootBundle.loadString('assets/Json/data.json');
  final myJson = jsonDecode(file);
  GlobalVariable.applicantStatus = ApplicantStatus.fromJson(myJson);
  //print(GlobalVariable.applicantStatus!.softwareDeveloper.New);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HR CRM CLONE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
