import 'package:flutter/material.dart';
import 'package:flutter_application_crm_clone/ui_widgets/middle_bar.dart';

import '../GlobalVariables/global_variable.dart';
import 'side_bar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    // print(GlobalVariable.applicantStatus!);
    print(GlobalVariable.applicantStatus!.cloudDeveloper.New);
    return Scaffold(
      body: Row(
        children: const [
          SideBar(),
          MiddleBar(),
        ],
      ),
      drawer: const Drawer(),
    );
  }
}
