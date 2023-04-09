import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double myWidth = MediaQuery.of(context).size.width;
    return Container(
      width: myWidth * 0.04,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            //offset: Offset(0, 2),
          ),
        ],
      ),
      // padding: EdgeInsets.all(18),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
              child: const Icon(
                Icons.menu,
                size: 30.0,
                color: Color.fromRGBO(178, 190, 181, 1.0),
              ),
              onTap: () =>
                  Scaffold.of(context).openDrawer() //this will open the drawer
              ),
          const SizedBox(
            height: 30,
          ),
          const Icon(
            Icons.settings,
            size: 30.0,
            color: Color.fromRGBO(102, 153, 204, 1.0),
          ),
          const SizedBox(
            height: 30,
          ),
          const Icon(
            Icons.badge,
            size: 30.0,
            color: Color.fromRGBO(102, 153, 204, 1.0),
          ),
          const SizedBox(
            height: 30,
          ),
          const Icon(
            Icons.home,
            size: 30.0,
            color: Color.fromRGBO(102, 153, 204, 1.0),
          ),
          const SizedBox(
            height: 30,
          ),
          const Icon(
            Icons.info,
            size: 30.0,
            color: Color.fromRGBO(102, 153, 204, 1.0),
          ),
          const SizedBox(
            height: 30,
          ),
          const Icon(
            Icons.account_circle,
            size: 30.0,
            color: Color.fromRGBO(102, 153, 204, 1.0),
          )
        ],
      ),
    );
  }
}
