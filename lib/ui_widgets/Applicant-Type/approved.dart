import 'package:flutter/material.dart';

import '../../Data-Models/card_architecture.dart';
import '../../GlobalVariables/global_variable.dart';

class Approved extends StatefulWidget {
  const Approved({Key? key}) : super(key: key);

  @override
  _ApprovedState createState() => _ApprovedState();
}

class _ApprovedState extends State<Approved> {
  @override
  Widget build(BuildContext context) {
    List<Widget> myWidgets = [];
    var approvedApplicantList =
        GlobalVariable.applicantStatus!.softwareDeveloper.approved;
    approvedApplicantList.forEach(
      (applicant) {
        CardArchitecture myCard = CardArchitecture(
            name: applicant.name,
            subtitle: applicant.position,
            imageAssetPath: applicant.imageAssetPath,
            skills: applicant.skills);
        myWidgets.add(myCard);
      },
    );
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
        onReorder: (oldIndex, newIndex) => updateMyTiles(oldIndex, newIndex),
      ),
    );
  }
}
