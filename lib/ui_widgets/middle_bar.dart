import 'package:flutter/material.dart';

import '../GlobalState/jobtypeStateManager.dart';

class MiddleBar extends StatelessWidget {
  const MiddleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double myWidth = MediaQuery.of(context).size.width * 0.3;
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
      width: myWidth,
      child: Column(children: [
        //making jobs card
        Container(
          height: 70,
          width: myWidth * 0.85,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7.0),
          ),
          child: Row(
            children: [
              const Expanded(
                flex: 3,
                child: Text('Jobs',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Expanded(
                // ignore: prefer_const_literals_to_create_immutables
                child: Row(children: [
                  const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  const Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                ]),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        //Different types of Jobs
        ValueListenableBuilder(
          valueListenable: jobNotifier,
          builder: (BuildContext context, value, Widget? child) {
            return Column(
              children: [
                JobType(
                  id: 0,
                  myWidth: myWidth,
                  jobTypeText: "Software Developer",
                  payScale: "USD 600-800",
                  myColor: value == 0 ? const Color.fromRGBO(100, 149, 237, 1.0): Colors.white,
                ),
                JobType(
                  id: 1,
                  myWidth: myWidth,
                  jobTypeText: "Cloud Developer",
                  payScale: "USD 600-800",
                  myColor: value == 1
                      ? const Color.fromRGBO(100, 149, 237, 1.0)
                      : Colors.white,
                ),
                JobType(
                  id: 2,
                  myWidth: myWidth,
                  jobTypeText: "Business Developer",
                  payScale: "USD 300-400",
                  myColor: value == 2
                      ? const Color.fromRGBO(100, 149, 237, 1.0)
                      : Colors.white,
                ),
                JobType(
                  id: 3,
                  myWidth: myWidth,
                  jobTypeText: "Accounts Manager",
                  payScale: "USD 200-300",
                  myColor: value == 3
                      ? const Color.fromRGBO(100, 149, 237, 1.0)
                      : Colors.white,
                ),
                JobType(
                  id: 4,
                  myWidth: myWidth,
                  jobTypeText: "Devops Engineer",
                  payScale: "USD 700-950",
                  myColor: value == 4
                      ? const Color.fromRGBO(100, 149, 237, 1.0)
                      : Colors.white,
                ),
                JobType(
                  id: 5,
                  myWidth: myWidth,
                  jobTypeText: "Quality Assurance",
                  payScale: "USD 500-600",
                  myColor: value == 5
                      ? const Color.fromRGBO(100, 149, 237, 1.0)
                      : Colors.white,
                ),
              ],
            );
          },
        ),
      ]),
    );
  }
}

class JobType extends StatelessWidget {
  const JobType(
      {super.key,
      required this.id,
      required this.myWidth,
      required this.jobTypeText,
      required this.payScale,
      required this.myColor});
  final int id;
  final String jobTypeText;
  final double myWidth;
  final String payScale;
  final Color myColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        jobNotifier.value = id;
      },
      child: Container(
        decoration: BoxDecoration(
          color: myColor,
          borderRadius: BorderRadius.circular(5),
        ),
        width: myWidth * 0.85,
        height: 70,
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(jobTypeText,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),
            Text(payScale,
                style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.normal,
                )),
          ],
        ),
      ),
    );
  }
}
