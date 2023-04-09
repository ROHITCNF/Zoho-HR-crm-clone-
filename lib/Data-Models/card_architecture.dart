import 'package:flutter/material.dart';

class CardArchitecture extends StatelessWidget {
  final String name;
  final String subtitle;
  final String imageAssetPath;
  final List<String> skills;

  const CardArchitecture(
      {Key? key,
      required this.name,
      required this.subtitle,
      required this.imageAssetPath,
      required this.skills})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(imageAssetPath)),
                title: Text(name),
                subtitle: Text('$subtitle .'),
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(237, 234, 222, 0.9),
                      ),
                      child: Text(skills[0])),
                  //const SizedBox(width: 8),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color.fromRGBO(237, 234, 222, 0.9),
                      ),
                      child: Text(skills[1])),
                  // const SizedBox(width: 8),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color.fromRGBO(237, 234, 222, 0.9),
                      ),
                      child: Text(skills[2])),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
