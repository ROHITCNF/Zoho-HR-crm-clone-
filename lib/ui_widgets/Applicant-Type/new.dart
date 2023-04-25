import 'package:flutter/material.dart';
import 'package:flutter_application_crm_clone/Data-Models/card_architecture.dart';
import '../../GlobalState/jobtypeStateManager.dart';
import '../../GlobalVariables/global_variable.dart';


class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  _NewState createState() => _NewState();
}

class _NewState extends State<New> {
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
                GlobalVariable.applicantStatus!.softwareDeveloper.New;
            break;
          case 1:
            newApplicantList =
                GlobalVariable.applicantStatus!.cloudDeveloper.New;
            break;
          case 2:
            newApplicantList =
                GlobalVariable.applicantStatus!.businessDeveloper.New;
            break;
          case 3:
            newApplicantList =
                GlobalVariable.applicantStatus!.accountsManager.New;
            break;
          case 4:
            newApplicantList =
                GlobalVariable.applicantStatus!.devopsEngineer.New;
            break;
          case 5:
            newApplicantList =
                GlobalVariable.applicantStatus!.qualityAssurance.New;
            break;
          default:
            newApplicantList =
                GlobalVariable.applicantStatus!.softwareDeveloper.New;
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
