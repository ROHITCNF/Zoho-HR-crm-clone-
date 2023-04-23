import 'package:flutter/material.dart';

import 'Applicant-Type/approved.dart';
import 'Applicant-Type/new.dart';
import 'Applicant-Type/shortlisted.dart';

class ThirdColoumn extends StatelessWidget {
  const ThirdColoumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          //1st child will be row eg. Cloud developer
          Container(
            height: 100,
            width: double.infinity,
            child: Container(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Software Developer',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    const Text(
                      'Your List',
                      style: TextStyle(color: Colors.grey),
                    )
                  ]),
            ),
          ),
          const Divider(
            //height: 20,
            thickness: 0.3,
            indent: 20,
            endIndent: 0,
            color: Colors.grey,
          ),
          //2nd will be box of new shortlisted  approved header icon boxes
          Container(
              height: 70,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.circular(7.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'New',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.orange[400],
                          borderRadius: BorderRadius.circular(7.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.check_box_rounded,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Shortlisted',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.green[200],
                          borderRadius: BorderRadius.circular(7.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.account_circle,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Approved',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          //3rd  will contain 3 box which actual contain the lists
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(220, 220, 220, 1),
                            borderRadius: BorderRadius.circular(10.0),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.grey.withOpacity(0.5),
                            //     spreadRadius: 2,
                            //     blurRadius: 5,
                            //     //offset: Offset(0, 2),
                            //   ),
                            // ],
                          ),
                          child: const New())),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(220, 220, 220, 1),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Shortlisted()),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(220, 220, 220, 1),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Approved()))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
