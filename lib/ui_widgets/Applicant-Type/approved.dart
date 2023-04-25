import 'package:flutter/material.dart';

import '../../Data-Models/card_architecture.dart';
import '../../GlobalState/jobtypeStateManager.dart';
import '../../GlobalVariables/global_variable.dart';

class Approved extends StatefulWidget {
  const Approved({Key? key}) : super(key: key);

  @override
  _ApprovedState createState() => _ApprovedState();
}

class _ApprovedState extends State<Approved> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: jobNotifier,
      builder: (BuildContext context, value, Widget? child) {
        List<Widget> myWidgets = [];
        var newApplicantList;
        switch (value) {
          case 0:
            newApplicantList =
                GlobalVariable.applicantStatus!.softwareDeveloper.approved;
            break;
          case 1:
            newApplicantList =
                GlobalVariable.applicantStatus!.cloudDeveloper.approved;
            break;
          case 2:
            newApplicantList =
                GlobalVariable.applicantStatus!.businessDeveloper.approved;
            break;
          case 3:
            newApplicantList =
                GlobalVariable.applicantStatus!.accountsManager.approved;
            break;
          case 4:
            newApplicantList =
                GlobalVariable.applicantStatus!.devopsEngineer.approved;
            break;
          case 5:
            newApplicantList =
                GlobalVariable.applicantStatus!.qualityAssurance.approved;
            break;
          default:
            newApplicantList =
                GlobalVariable.applicantStatus!.softwareDeveloper.approved;
            break;
        }

        newApplicantList.forEach((applicant) {
          CardArchitecture myCard = CardArchitecture(
              name: applicant.name,
              subtitle: applicant.position,
              imageAssetPath: applicant.imageAssetPath,
              skills: applicant.skills);

          myWidgets.add(myCard);
        });
        void updateMyTiles(int oldIndex, int newIndex) {
          //call the setState
          setState(() {
            //adjustments
            if (oldIndex < newIndex) {
              newIndex--;
            }
            //get the tile we are removing
            final tile = myWidgets.removeAt(oldIndex);
            //place the tile at new position
            myWidgets.insert(newIndex, tile);
          });
        }

        return Container(
          child: ReorderableListView(
            children: myWidgets.map((widget) {
              return Container(
                key: ValueKey(widget),
                child: widget,
              );
            }).toList(),
            onReorder: (oldIndex, newIndex) =>
                updateMyTiles(oldIndex, newIndex),
          ),
        );
      },
    );
  }
}
