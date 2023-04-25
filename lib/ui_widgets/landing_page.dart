import 'package:flutter/material.dart';
import 'package:flutter_application_crm_clone/ui_widgets/middle_bar.dart';

import 'side_bar.dart';
import 'third_coloumn.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    // print(GlobalVariable.applicantStatus!.cloudDeveloper.New);
    //GlobalVariable.checker = GlobalVariable.applicantStatus!.cloudDeveloper.New;
    // print(GlobalVariable.checker![0].name);
    return Scaffold(
      body: Row(
        children: const [
          SideBar(),
          MiddleBar(),
          ThirdColoumn(),
        ],
      ),
      drawer: const Drawer(),
    );
  }
}
