import 'package:flutter/material.dart';

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
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.5),
            //     spreadRadius: 2,
            //     blurRadius: 5,
            //     //offset: Offset(0, 2),
            //   ),
            // ],
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
        Column(
          children: [
            JobType(
              myWidth: myWidth,
              jobTypeText: "Software Developer",
              payScale: "USD 600-800",
              myColor: const Color.fromRGBO(100, 149, 237, 1.0),
            ),
            JobType(
              myWidth: myWidth,
              jobTypeText: "Cloud Developer",
              payScale: "USD 600-800",
              myColor: Colors.white,
            ),
            JobType(
              myWidth: myWidth,
              jobTypeText: "Buisness Developer",
              payScale: "USD 300-400",
              myColor: Colors.white,
            ),
            JobType(
              myWidth: myWidth,
              jobTypeText: "Accounts Manager",
              payScale: "USD 200-300",
              myColor: Colors.white,
            ),
            JobType(
              myWidth: myWidth,
              jobTypeText: "Devops Engineer",
              payScale: "USD 700-950",
              myColor: Colors.white,
            ),
            JobType(
              myWidth: myWidth,
              jobTypeText: "Quality Assurance",
              payScale: "USD 500-600",
              myColor: Colors.white,
            ),
          ],
        ),
      ]),
    );
  }
}

class JobType extends StatelessWidget {
  const JobType(
      {super.key,
      required this.myWidth,
      required this.jobTypeText,
      required this.payScale,
      required this.myColor});
  final String jobTypeText;
  final double myWidth;
  final String payScale;
  final Color myColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(jobTypeText);
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
